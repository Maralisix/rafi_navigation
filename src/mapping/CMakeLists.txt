cmake_minimum_required(VERSION 3.0.2)
project(mapping)

find_package(catkin REQUIRED COMPONENTS
  roscpp
  rospy
  std_msgs
  map_server
)

catkin_package()

include_directories(
  ${catkin_INCLUDE_DIRS}
)
