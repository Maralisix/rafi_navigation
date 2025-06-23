#!/usr/bin/env python3

import rospy
import numpy as np
from sensor_msgs.msg import LaserScan
import tf.transformations as tft

class LidarMerger:
    def __init__(self):
        rospy.init_node("lidar_merger")

        # Suscribirse a los dos LiDARs
        self.sub1 = rospy.Subscriber("/scan1", LaserScan, self.callback_scan1)
        self.sub2 = rospy.Subscriber("/scan2", LaserScan, self.callback_scan2)

        # Publicador del scan combinado
        self.pub = rospy.Publisher("/scan", LaserScan, queue_size=10)

        # Datos de los escaneos
        self.scan1 = None
        self.scan2 = None

        # Parámetros de transformación
        self.translation_x = -0.19  # Desplazamiento de /scan2 en X
        self.rotation_z = np.pi  # Rotación de 180° en Z

    def callback_scan1(self, msg):
        self.scan1 = msg
        self.merge_scans()

    def callback_scan2(self, msg):
        self.scan2 = msg
        self.merge_scans()

    def merge_scans(self):
        if self.scan1 is None or self.scan2 is None:
            return

        # Asegurar que ambos escaneos tienen los mismos parámetros
        if self.scan1.angle_min != self.scan2.angle_min or self.scan1.angle_max != self.scan2.angle_max or self.scan1.angle_increment != self.scan2.angle_increment:
            rospy.logwarn("Los escaneos tienen diferentes configuraciones angulares.")
            return

        # Copiar datos del primer escaneo
        merged_scan = LaserScan()
        merged_scan.header = self.scan1.header
        merged_scan.angle_min = self.scan1.angle_min
        merged_scan.angle_max = self.scan1.angle_max
        merged_scan.angle_increment = self.scan1.angle_increment
        merged_scan.time_increment = self.scan1.time_increment
        merged_scan.scan_time = self.scan1.scan_time
        merged_scan.range_min = self.scan1.range_min
        merged_scan.range_max = self.scan1.range_max
        merged_scan.ranges = list(self.scan1.ranges)  # Copiamos la lista de rangos
        merged_scan.intensities = list(self.scan1.intensities)  # Copiamos intensidades si las hay

        # Transformar coordenadas polares de scan2 a cartesianas
        angles = np.arange(self.scan2.angle_min, self.scan2.angle_max, self.scan2.angle_increment)
        ranges = np.array(self.scan2.ranges)

        x = ranges * np.cos(angles) + self.translation_x
        y = ranges * np.sin(angles)

        # Rotación de 180° alrededor de Z
        x_rot = -x
        y_rot = -y

        # Convertir de vuelta a polares
        transformed_ranges = np.sqrt(x_rot**2 + y_rot**2)
        transformed_angles = np.arctan2(y_rot, x_rot)

        # Alinear con el escaneo original
        indices = np.round((transformed_angles - self.scan1.angle_min) / self.scan1.angle_increment).astype(int)
        valid = (indices >= 0) & (indices < len(self.scan1.ranges))

        # Fusionar datos correctamente
        for i, valid_idx in enumerate(indices[valid]):
            if np.isfinite(transformed_ranges[i]):  # Evitamos valores NaN o Inf
                merged_scan.ranges[valid_idx] = min(merged_scan.ranges[valid_idx], transformed_ranges[i])

        # Publicar el escaneo fusionado
        merged_scan.header.frame_id = "laser"
        merged_scan.header.stamp = rospy.Time.now()
        self.pub.publish(merged_scan)

if __name__ == "__main__":
    LidarMerger()
    rospy.spin()
