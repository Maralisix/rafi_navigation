# generated from catkin/cmake/template/pkg.context.pc.in
CATKIN_PACKAGE_PREFIX = ""
PROJECT_PKG_CONFIG_INCLUDE_DIRS = "${prefix}/include;/home/brazo/libfranka/include".split(';') if "${prefix}/include;/home/brazo/libfranka/include" != "" else []
PROJECT_CATKIN_DEPENDS = "roscpp;message_runtime;control_msgs;actionlib;sensor_msgs;xmlrpcpp;actionlib_msgs".replace(';', ' ')
PKG_CONFIG_LIBRARIES_WITH_PREFIX = "-lfranka_gripper;/home/brazo/libfranka/build/libfranka.so.0.9.2".split(';') if "-lfranka_gripper;/home/brazo/libfranka/build/libfranka.so.0.9.2" != "" else []
PROJECT_NAME = "franka_gripper"
PROJECT_SPACE_DIR = "/home/brazo/workspace/rafi_ws/install"
PROJECT_VERSION = "0.10.1"
