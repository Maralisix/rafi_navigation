#!/usr/bin/env python3
import threading
from numbers import Number
from math import pi, cos, sin
import math

import diagnostic_msgs
import diagnostic_updater
from roboclaw_driver.roboclaw_3 import Roboclaw as roboclaw

import rospy
import tf
from geometry_msgs.msg import Quaternion, Twist
from nav_msgs.msg import Odometry

__author__ = "bwbazemore@uga.edu (Brad Bazemore)"


# TODO need to find some better was of handling OSerror 11 or preventing it, any ideas?

class EncoderOdom:
    def __init__(self, ticks_per_meter, base_width, radio):
        self.TICKS_PER_METER = ticks_per_meter
        self.BASE_WIDTH = 0.2
        self.BASE_LENGTH = 0.2
        self.odom_pub = rospy.Publisher('/odom', Odometry, queue_size=10)
        self.cur_x = 0
        self.cur_y = 0
        self.cur_theta = 0.0
        self.last_enc_left_forw = 0
        self.last_enc_right_back = 0
        self.last_enc_left_back = 0
        self.last_enc_right_forw = 0
        self.last_enc_time = rospy.Time.now()
        self.TICKS_PER_VUELTA = 16300.0
        self.wheel_radius = radio



    @staticmethod
    def normalize_angle(angle):
        while angle > pi:
            angle -= 2.0 * pi
        while angle < -pi:
            angle += 2.0 * pi
        return angle

    def update(self, enc_left_forw, enc_right_forw, enc_left_back, enc_right_back):

        current_time = rospy.Time.now()
        d_time = (current_time - self.last_enc_time).to_sec()
        self.last_enc_time = current_time

        left_forw_ticks = enc_left_forw - self.last_enc_left_forw
        right_forw_ticks = enc_right_forw - self.last_enc_right_forw
        left_back_ticks = enc_left_back - self.last_enc_left_back
        right_back_ticks = enc_right_back - self.last_enc_right_back

        self.last_enc_left_forw = enc_left_forw
        self.last_enc_right_forw = enc_right_forw
        self.last_enc_left_back = enc_left_back
        self.last_enc_right_back = enc_right_back
        wheel_radius = 0.1

        w_left_forw = left_forw_ticks / self.TICKS_PER_VUELTA * 2 * math.pi / d_time
        w_left_back = left_back_ticks / self.TICKS_PER_VUELTA * 2 * math.pi / d_time
        w_right_back = right_back_ticks / self.TICKS_PER_VUELTA * 2 * math.pi / d_time
        w_right_forw = right_forw_ticks / self.TICKS_PER_VUELTA * 2 * math.pi / d_time

        vel_x = wheel_radius * (w_left_forw + w_left_back + w_right_back + w_right_forw) / 4
        vel_y = wheel_radius * (w_left_forw + w_right_back - w_left_back - w_right_forw) / 4
        w_theta = wheel_radius * (w_left_forw + w_left_back - w_right_back - w_right_forw) / (4 * self.BASE_WIDTH + 4 * self.BASE_LENGTH)
        d_theta = w_theta * d_time

        
        self.cur_x += d_time * (vel_x * (cos(self.cur_theta)) - vel_y * (sin(self.cur_theta)))
        self.cur_y += d_time * (vel_x * (sin(self.cur_theta)) + vel_y * (cos(self.cur_theta))) 
        self.cur_theta = self.normalize_angle(self.cur_theta +  d_theta)


        return vel_x, vel_y, w_theta, right_forw_ticks, left_forw_ticks, left_back_ticks, right_back_ticks

    def update_publish(self, enc_left_forw, enc_right_forw, enc_left_back, enc_right_back):
        # 2106 per 0.1 seconds is max speed, error in the 16th bit is 32768
        # TODO lets find a better way to deal with this error
        if abs(enc_left_forw - self.last_enc_left_forw) > 20000:
            rospy.logerr("Ignoring left encoder jump: cur %d, last %d" % (enc_left_forw, self.last_enc_left_forw))
        elif abs(enc_right_forw - self.last_enc_right_forw) > 20000:
            rospy.logerr("Ignoring right encoder jump: cur %d, last %d" % (enc_right_forw, self.last_enc_right_forw))
        elif abs(enc_left_back - self.last_enc_left_back) > 20000:
            rospy.logerr("Ignoring right encoder jump: cur %d, last %d" % (enc_left_back, self.last_enc_left_back))
        elif abs(enc_right_back - self.last_enc_right_back) > 20000:
            rospy.logerr("Ignoring right encoder jump: cur %d, last %d" % (enc_right_back, self.last_enc_right_back))
        else:
            vel_x, vel_y, vel_theta, right_forw_ticks, left_forw_ticks, left_back_ticks, right_back_ticks= self.update(enc_left_forw, enc_right_forw, enc_left_back, enc_right_back)
            self.publish_odom(self.cur_x, self.cur_y, self.cur_theta, vel_x, vel_y, vel_theta, right_forw_ticks, left_forw_ticks, left_back_ticks, right_back_ticks)

    def publish_odom(self, cur_x, cur_y, cur_theta, vx, vy, vth, right_forw_ticks, left_forw_ticks, left_back_ticks, right_back_ticks):
        quat = tf.transformations.quaternion_from_euler(0, 0, cur_theta)
        current_time = rospy.Time.now()

        br = tf.TransformBroadcaster()
        br.sendTransform((cur_x, cur_y, 0),
                         tf.transformations.quaternion_from_euler(0, 0, cur_theta),
                         current_time,
                         "base_link",
                         "odom")

        odom = Odometry()
        odom.header.stamp = current_time
        odom.header.frame_id = 'odom'

        odom.pose.pose.position.x = cur_x
        odom.pose.pose.position.y = cur_y
        odom.pose.pose.position.z = 0.0
        odom.pose.pose.orientation = Quaternion(*quat)

        odom.pose.covariance[0] = 0.05
        odom.pose.covariance[7] = 0.1
        odom.pose.covariance[14] = 99999
        odom.pose.covariance[21] = 99999
        odom.pose.covariance[28] = 99999
        odom.pose.covariance[35] = 0.1

        odom.child_frame_id = 'base_link'
        odom.twist.twist.linear.x = vx
        odom.twist.twist.linear.y = vy
        odom.twist.twist.angular.z = vth
        odom.twist.covariance = odom.pose.covariance

        self.odom_pub.publish(odom)


class Node:
    def __init__(self):

        self.ERRORS = {0x000000: (diagnostic_msgs.msg.DiagnosticStatus.OK, "Normal"),
                        0x000001: (diagnostic_msgs.msg.DiagnosticStatus.ERROR, "E-Stop"),
                        0x000002: (diagnostic_msgs.msg.DiagnosticStatus.ERROR, "Temperature1"),
                        0x000004: (diagnostic_msgs.msg.DiagnosticStatus.ERROR, "Temperature2"),
                        0x000008: (diagnostic_msgs.msg.DiagnosticStatus.ERROR, "Main Voltage High"),
                        0x000010: (diagnostic_msgs.msg.DiagnosticStatus.ERROR, "Logic Voltage High"),
                        0x000020: (diagnostic_msgs.msg.DiagnosticStatus.ERROR, "Logic Voltage Low"),
                        0x000040: (diagnostic_msgs.msg.DiagnosticStatus.ERROR, "M1 Driver Fault"),
                        0x000080: (diagnostic_msgs.msg.DiagnosticStatus.ERROR, "M2 Driver Fault"),
                        0x000100: (diagnostic_msgs.msg.DiagnosticStatus.ERROR, "M1 Speed"),
                        0x000200: (diagnostic_msgs.msg.DiagnosticStatus.ERROR, "M2 Speed"),
                        0x000400: (diagnostic_msgs.msg.DiagnosticStatus.ERROR, "M1 Position"),
                        0x000800: (diagnostic_msgs.msg.DiagnosticStatus.ERROR, "M2 Position"),
                        0x001000: (diagnostic_msgs.msg.DiagnosticStatus.ERROR, "M1 Current"),
                        0x002000: (diagnostic_msgs.msg.DiagnosticStatus.ERROR, "M2 Current"),
                        0x010000: (diagnostic_msgs.msg.DiagnosticStatus.WARN, "M1 Over Current"),
                        0x020000: (diagnostic_msgs.msg.DiagnosticStatus.WARN, "M2 Over Current"),
                        0x040000: (diagnostic_msgs.msg.DiagnosticStatus.WARN, "Main Voltage High"),
                        0x080000: (diagnostic_msgs.msg.DiagnosticStatus.WARN, "Main Voltage Low"),
                        0x100000: (diagnostic_msgs.msg.DiagnosticStatus.WARN, "Temperature1"),
                        0x200000: (diagnostic_msgs.msg.DiagnosticStatus.WARN, "Temperature2"),
                        0x400000: (diagnostic_msgs.msg.DiagnosticStatus.OK, "S4 Signal Triggered"),
                        0x800000: (diagnostic_msgs.msg.DiagnosticStatus.OK, "S5 Signal Triggered"),
                        0x01000000: (diagnostic_msgs.msg.DiagnosticStatus.WARN, "Speed Error Limit"),
                        0x02000000: (diagnostic_msgs.msg.DiagnosticStatus.WARN, "Position Error Limit")}

        self.mutex = threading.Lock()
        rospy.init_node("roboclaw_node", disable_signals=True)
        rospy.on_shutdown(self.shutdown)
        rospy.loginfo("Connecting to roboclaws")
        
        ###########De momento he modificado a partir de aquí
        dev_name1 = rospy.get_param("~dev1", "/dev/ttyACM0")
        dev_name2 = rospy.get_param("~dev2", "/dev/ttyACM1") #Sacamos el nombre de ambas controladoras
        baud_rate = int(rospy.get_param("~baud", "115200"))  #Los baudios son iguales para ambos

        self.address1 = int(rospy.get_param("~address1", "128"))
        self.address2 = int(rospy.get_param("~address2", "129"))
        
        #Comprobamos para ambas direcciones
        
        if self.address1 > 0x87 or self.address1 < 0x80:  
            rospy.logfatal("Address1 out of range")
            rospy.signal_shutdown("Address1 out of range")
            
        if self.address2 > 0x87 or self.address2 < 0x80:  
            rospy.logfatal("Address2 out of range")
            rospy.signal_shutdown("Address2 out of range")

        # TODO need someway to check if address is correct
        self.roboclaw1 = roboclaw(dev_name1, baud_rate)       #Aquí crea el objeto de la clase Roboclaw
        self.roboclaw2 = roboclaw(dev_name2, baud_rate)
        
        status1 = None
        status2 = None
        
        #Intentamos la conexión a Roboclaw1
        try:
            status1 = self.roboclaw1.Open()
        except Exception as e:
            rospy.logerr("Could not connect to Roboclaw1")
            rospy.logdebug(e)
            rospy.signal_shutdown("Could not connect to Roboclaw1")
            
        if status1:
            rospy.loginfo("Sucessfully open connection to RoboClaw1")
        else:
            rospy.signal_shutdown("Could not connect to Roboclaw1")
            
        #Intentamos la conexión a Roboclaw2
        try:
            status2 = self.roboclaw2.Open()
        except Exception as e:
            rospy.logerr("Could not connect to Roboclaw2")
            rospy.logdebug(e)
            rospy.signal_shutdown("Could not connect to Roboclaw2")
        
        if status2:
            rospy.loginfo("Sucessfully open connection to RoboClaw2")
        else:
            rospy.signal_shutdown("Could not connect to Roboclaw2")
         
#####################################################################################################
        self.updater = diagnostic_updater.Updater()
        self.updater.setHardwareID("Roboclaw")
        self.updater.add(diagnostic_updater.
                         FunctionDiagnosticTask("Vitals", self.check_vitals))
        
        rospy.sleep(1)
        ############VERSIONES
        try:
            with self.mutex:
                version1 = self.roboclaw1.ReadVersion(self.address1)
                rospy.loginfo(version1)  #MODIF
        except Exception as e:
            rospy.logwarn("Problem getting roboclaw1 version")
            rospy.logdebug(e)
            rospy.signal_shutdown("Failed to read roboclaw1 version, controller function improperly!!!")

        if not version1[0]:
            rospy.logwarn("Could not get version from roboclaw1")
            rospy.signal_shutdown("Failed to read roboclaw1 version, controller function improperly!!!")
        else:
            rospy.loginfo(repr(version1[1]))
        ###########
        try:
            with self.mutex:
                version2 = self.roboclaw2.ReadVersion(self.address2)
                rospy.loginfo(version2)
        except Exception as e:
            rospy.logwarn("Problem getting roboclaw2 version")
            rospy.logdebug(e)
            rospy.signal_shutdown("Failed to read roboclaw2 version, controller function improperly!!!")

        if not version2[0]:
            rospy.logwarn("Could not get version from roboclaw2")
            rospy.signal_shutdown("Failed to read roboclaw2 version, controller function improperly!!!")
        else:
            rospy.loginfo(repr(version2[1]))
        ############
        with self.mutex:
            self.roboclaw1.SpeedM1M2(self.address1, 0, 0)
            self.roboclaw1.ResetEncoders(self.address1)
            self.roboclaw2.SpeedM1M2(self.address2, 0, 0)
            self.roboclaw2.ResetEncoders(self.address2)

        self.MAX_SPEED          = rospy.get_param("~max_speed", 0.5)
        self.TICKS_PER_METER    = rospy.get_param("~ticks_per_meter", 4500)
        self.BASE_WIDTH         = rospy.get_param("~base_width", 0.315)
        self.CMD_FREQ           = rospy.get_param("~cmd_frequency", 10)
        self.wheel_radius       = rospy.get_param("~radio", 0.1)

        self.encodm                 = EncoderOdom(self.TICKS_PER_METER, self.BASE_WIDTH, self.wheel_radius)
        self.last_set_speed_time    = rospy.get_rostime()
#############################3333
        rospy.Subscriber("cmd_base_vel", Twist, self.cmd_vel_callback)

        rospy.logdebug("dev1 %s", dev_name1)
        rospy.logdebug("dev2 %s", dev_name2)
        rospy.logdebug("baud %d", baud_rate)
        rospy.logdebug("address1 %d", self.address1)
        rospy.logdebug("address2 %d", self.address2)
        rospy.logdebug("max_speed %f", self.MAX_SPEED)
        rospy.logdebug("ticks_per_meter %f", self.TICKS_PER_METER)
        rospy.logdebug("base_width %f", self.BASE_WIDTH)

    def run(self):
        rospy.loginfo("Starting motor drive")
        r_time = rospy.Rate(self.CMD_FREQ)
        while not rospy.is_shutdown():

            if (rospy.get_rostime() - self.last_set_speed_time).to_sec() > 1./float(self.CMD_FREQ):
                # rospy.loginfo("Did not get command for 1 second, stopping")
                try:
                    with self.mutex:
                        self.roboclaw1.ForwardM1(self.address1, 0)
                        self.roboclaw1.ForwardM2(self.address1, 0)
                        self.roboclaw2.ForwardM1(self.address2, 0)
                        self.roboclaw2.ForwardM2(self.address2, 0)
                except OSError as e:
                    rospy.logerr("Could not stop")
                    rospy.logdebug(e)

            # TODO need find solution to the OSError11 looks like sync problem with serial
            status1, enc1, crc1 = None, None, None
            status2, enc2, crc2 = None, None, None
            status3, enc3, crc3 = None, None, None
            status4, enc4, crc4 = None, None, None

            try:
                with self.mutex:
                    status1, enc1, crc1 = self.roboclaw1.ReadEncM1(self.address1)   #esto no lo modifico por la odom
            except ValueError:
                pass
            except OSError as e:
                rospy.logwarn("ReadEncM1 OSError: %d", e.errno)
                rospy.logdebug(e)

            try:
                with self.mutex:
                    status2, enc2, crc2 = self.roboclaw1.ReadEncM2(self.address1)
            except ValueError:
                pass
            except OSError as e:
                rospy.logwarn("ReadEncM2 OSError: %d", e.errno)
                rospy.logdebug(e)

            try:
                with self.mutex:
                    status4, enc4, crc4 = self.roboclaw2.ReadEncM1(self.address2)   #esto no lo modifico por la odom
            except ValueError:
                pass
            except OSError as e:
                rospy.logwarn("ReadEncM1 OSError: %d", e.errno)
                rospy.logdebug(e)

            try:
                with self.mutex:
                    status3, enc3, crc3 = self.roboclaw2.ReadEncM2(self.address2)
            except ValueError:
                pass
            except OSError as e:
                rospy.logwarn("ReadEncM2 OSError: %d", e.errno)
                rospy.logdebug(e)

            if ((isinstance(enc1,Number) and isinstance(enc2,Number) and isinstance(enc3,Number) and isinstance(enc4,Number))):
                rospy.logdebug(" Encoders %d %d %d %d" % (enc1, enc2, enc3, enc4))
                self.encodm.update_publish(enc2, enc1, enc4, enc3)

                self.updater.update()
            r_time.sleep()

################
    def cmd_vel_callback(self, msg):
        self.last_set_speed_time = rospy.get_rostime()

        L = 0.4 / 2 # 0.4 = length between wheels
        W = 0.42 / 2 # 0.42 = width between wheels
        R = 0.1 # wheel radius

        linear_x = msg.linear.x
        linear_y = msg.linear.y
        rot_z = msg.angular.z

        # rospy.loginfo("linear_x: %8.3f  linear_y: %8.3f  rot_z: %8.3f", linear_x, linear_y, rot_z)
        
        if linear_x > self.MAX_SPEED:
            linear_x = self.MAX_SPEED
        if linear_x < -self.MAX_SPEED:
            linear_x = -self.MAX_SPEED
            
        if linear_y > self.MAX_SPEED:
            linear_y = self.MAX_SPEED
        if linear_y < -self.MAX_SPEED:
            linear_y = -self.MAX_SPEED

        if rot_z > self.MAX_SPEED:
            rot_z = self.MAX_SPEED
        if rot_z < -self.MAX_SPEED:
            rot_z = -self.MAX_SPEED

#128 DELANTE
#129 DETRAS
        v1r = (linear_x + linear_y + (L + W) * rot_z) # m/s V2
        v1l = (linear_x - linear_y - (L + W) * rot_z)  #V1
        v2r = (linear_x - linear_y + (L + W) * rot_z)  # m/s V3
        v2l = (linear_x + linear_y - (L + W) * rot_z)  #V4

        if v1r > self.MAX_SPEED:
            v1r = self.MAX_SPEED
        if v1r < -self.MAX_SPEED:
            v1r = -self.MAX_SPEED

        if v2r > self.MAX_SPEED:
            v2r = self.MAX_SPEED
        if v2r < -self.MAX_SPEED:
            v2r = -self.MAX_SPEED

        if v1l > self.MAX_SPEED:
            v1l = self.MAX_SPEED
        if v1l < -self.MAX_SPEED:
            v1l = -self.MAX_SPEED
            
        if v2l > self.MAX_SPEED:
            v2l = self.MAX_SPEED
        if v2l < -self.MAX_SPEED:
            v2l = -self.MAX_SPEED

        v1r_ticks = int(v1r * self.TICKS_PER_METER)  # ticks/s
        v1l_ticks = int(v1l * self.TICKS_PER_METER)
        v2r_ticks = int(v2r * self.TICKS_PER_METER)  # ticks/s
        v2l_ticks = int(v2l * self.TICKS_PER_METER)


        rospy.loginfo("v1r:%8d v1l: %8d", v1r, v1l)
        rospy.loginfo("v2r:%8d v2l: %8d", v2r, v2l)

        rospy.loginfo("v1r_ticks:%8d v1l_ticks: %8d", v1r_ticks, v1l_ticks)
        rospy.loginfo("v2r_ticks:%8d v2l_ticks: %8d", v2r_ticks, v2l_ticks)

        try:
            # This is a hack way to keep a poorly tuned PID from making noise at speed 0
            with self.mutex:
                if v1r_ticks == 0 and v1l_ticks == 0:
                    self.roboclaw1.ForwardM1(self.address1, 0)
                    self.roboclaw1.ForwardM2(self.address1, 0)
                    self.roboclaw2.ForwardM1(self.address2, 0)
                    self.roboclaw2.ForwardM2(self.address2, 0)
                else:
                    self.roboclaw1.SpeedM1M2(self.address1, v1l_ticks, v1r_ticks)
                    self.roboclaw2.SpeedM1M2(self.address2, v2r_ticks, v2l_ticks)
                   
        except OSError as e:
            rospy.logwarn("SpeedM1M2 OSError: %d", e.errno)
            rospy.logdebug(e)

    # TODO: Need to make this work when more than one error is raised
    def check_vitals(self, stat):
        try:
            with self.mutex:
                status = self.roboclaw1.ReadError(self.address1)[1]
        except OSError as e:
            rospy.logwarn("Diagnostics OSError: %d", e.errno)
            rospy.logdebug(e)
            return
        
        try:
            state, message = self.ERRORS[status]
        except KeyError:
            state = diagnostic_msgs.msg.DiagnosticStatus.ERROR
            message = "Unknown or various errors: 0x{0:x}".format(status)

        stat.summary(state, message)
        
        try:
            with self.mutex:
                stat.add("Main Batt V:", float(self.roboclaw1.ReadMainBatteryVoltage(self.address1)[1] / 10))
                stat.add("Logic Batt V:", float(self.roboclaw1.ReadLogicBatteryVoltage(self.address1)[1] / 10))
                stat.add("Temp1 C:", float(self.roboclaw1.ReadTemp(self.address1)[1] / 10))
                stat.add("Temp2 C:", float(self.roboclaw1.ReadTemp2(self.address1)[1] / 10))
        except OSError as e:
            rospy.logwarn("Diagnostics OSError: %d", e.errno)
            rospy.logdebug(e)
        return stat

    # TODO: need clean shutdown so motors stop even if new msgs are arriving
    def shutdown(self):
        rospy.loginfo("Shutting down")
        try:
            with self.mutex:
                self.roboclaw1.ForwardM1(self.address1, 0)
                self.roboclaw1.ForwardM2(self.address1, 0)
        
        except OSError:
            rospy.logerr("Shutdown did not work trying again")
            try:
                with self.mutex:
                    self.roboclaw1.ForwardM1(self.address1, 0)
                    self.roboclaw1.ForwardM2(self.address1, 0)
            except OSError as e:
                rospy.logerr("Could not shutdown motors!!!!")
                rospy.logdebug(e)
        self.roboclaw1._port.flushOutput()
        self.roboclaw1._port.flushInput()
        self.roboclaw1._port.flush()

if __name__ == "__main__":
    try:
        node = Node()
        node.run()
    except rospy.ROSInterruptException:
        pass
    rospy.loginfo("Exiting")
