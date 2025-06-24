PROJECT(rf2o_laser_odometry)

CMAKE_MINIMUM_REQUIRED(VERSION 3.3)

# Requiere C++17
if(${CMAKE_VERSION} VERSION_LESS "3.8.0")
	set(CMAKE_CXX_FLAGS "${CMAKE_CXX_FLAGS} -std=c++17")
else()
	set(CMAKE_CXX_STANDARD 17)
endif()

## Encuentra macros y librerías de catkin
find_package(catkin REQUIRED COMPONENTS  
  roscpp
  rospy
  nav_msgs
  sensor_msgs
  std_msgs
  tf
  cmake_modules
)

## Dependencias del sistema
find_package(Boost REQUIRED COMPONENTS system)

# --- Añadido manualmente: Eigen 3.3.7 ---
set(EIGEN3_INCLUDE_DIR "/usr/include/eigen3")
include_directories(${EIGEN3_INCLUDE_DIR})

catkin_package(
 INCLUDE_DIRS include ${EIGEN3_INCLUDE_DIR}
 LIBRARIES ${PROJECT_NAME}
 CATKIN_DEPENDS nav_msgs roscpp sensor_msgs std_msgs tf
 DEPENDS
)

## Incluye directorios
include_directories(
  include
  SYSTEM
  ${catkin_INCLUDE_DIRS}
  ${Boost_INCLUDE_DIRS}
  ${EIGEN3_INCLUDE_DIR}
)

## Librería
add_library(${PROJECT_NAME} src/CLaserOdometry2D.cpp)
target_link_libraries(${PROJECT_NAME} ${catkin_LIBRARIES})

## Nodo ejecutable
add_executable(rf2o_laser_odometry_node src/CLaserOdometry2DNode.cpp)
target_link_libraries(rf2o_laser_odometry_node ${PROJECT_NAME} ${catkin_LIBRARIES})

