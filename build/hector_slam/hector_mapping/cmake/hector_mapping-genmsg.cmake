# generated from genmsg/cmake/pkg-genmsg.cmake.em

message(STATUS "hector_mapping: 2 messages, 1 services")

set(MSG_I_FLAGS "-Ihector_mapping:/home/brazo/workspace/rafi_ws/src/hector_slam/hector_mapping/msg;-Igeometry_msgs:/opt/ros/noetic/share/geometry_msgs/cmake/../msg;-Istd_msgs:/opt/ros/noetic/share/std_msgs/cmake/../msg")

# Find all generators
find_package(gencpp REQUIRED)
find_package(geneus REQUIRED)
find_package(genlisp REQUIRED)
find_package(gennodejs REQUIRED)
find_package(genpy REQUIRED)

add_custom_target(hector_mapping_generate_messages ALL)

# verify that message/service dependencies have not changed since configure



get_filename_component(_filename "/home/brazo/workspace/rafi_ws/src/hector_slam/hector_mapping/msg/HectorDebugInfo.msg" NAME_WE)
add_custom_target(_hector_mapping_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "hector_mapping" "/home/brazo/workspace/rafi_ws/src/hector_slam/hector_mapping/msg/HectorDebugInfo.msg" "hector_mapping/HectorIterData"
)

get_filename_component(_filename "/home/brazo/workspace/rafi_ws/src/hector_slam/hector_mapping/msg/HectorIterData.msg" NAME_WE)
add_custom_target(_hector_mapping_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "hector_mapping" "/home/brazo/workspace/rafi_ws/src/hector_slam/hector_mapping/msg/HectorIterData.msg" ""
)

get_filename_component(_filename "/home/brazo/workspace/rafi_ws/src/hector_slam/hector_mapping/srv/ResetMapping.srv" NAME_WE)
add_custom_target(_hector_mapping_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "hector_mapping" "/home/brazo/workspace/rafi_ws/src/hector_slam/hector_mapping/srv/ResetMapping.srv" "geometry_msgs/Point:geometry_msgs/Pose:geometry_msgs/Quaternion"
)

#
#  langs = gencpp;geneus;genlisp;gennodejs;genpy
#

### Section generating for lang: gencpp
### Generating Messages
_generate_msg_cpp(hector_mapping
  "/home/brazo/workspace/rafi_ws/src/hector_slam/hector_mapping/msg/HectorDebugInfo.msg"
  "${MSG_I_FLAGS}"
  "/home/brazo/workspace/rafi_ws/src/hector_slam/hector_mapping/msg/HectorIterData.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/hector_mapping
)
_generate_msg_cpp(hector_mapping
  "/home/brazo/workspace/rafi_ws/src/hector_slam/hector_mapping/msg/HectorIterData.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/hector_mapping
)

### Generating Services
_generate_srv_cpp(hector_mapping
  "/home/brazo/workspace/rafi_ws/src/hector_slam/hector_mapping/srv/ResetMapping.srv"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Point.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Pose.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Quaternion.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/hector_mapping
)

### Generating Module File
_generate_module_cpp(hector_mapping
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/hector_mapping
  "${ALL_GEN_OUTPUT_FILES_cpp}"
)

add_custom_target(hector_mapping_generate_messages_cpp
  DEPENDS ${ALL_GEN_OUTPUT_FILES_cpp}
)
add_dependencies(hector_mapping_generate_messages hector_mapping_generate_messages_cpp)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/brazo/workspace/rafi_ws/src/hector_slam/hector_mapping/msg/HectorDebugInfo.msg" NAME_WE)
add_dependencies(hector_mapping_generate_messages_cpp _hector_mapping_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/brazo/workspace/rafi_ws/src/hector_slam/hector_mapping/msg/HectorIterData.msg" NAME_WE)
add_dependencies(hector_mapping_generate_messages_cpp _hector_mapping_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/brazo/workspace/rafi_ws/src/hector_slam/hector_mapping/srv/ResetMapping.srv" NAME_WE)
add_dependencies(hector_mapping_generate_messages_cpp _hector_mapping_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(hector_mapping_gencpp)
add_dependencies(hector_mapping_gencpp hector_mapping_generate_messages_cpp)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS hector_mapping_generate_messages_cpp)

### Section generating for lang: geneus
### Generating Messages
_generate_msg_eus(hector_mapping
  "/home/brazo/workspace/rafi_ws/src/hector_slam/hector_mapping/msg/HectorDebugInfo.msg"
  "${MSG_I_FLAGS}"
  "/home/brazo/workspace/rafi_ws/src/hector_slam/hector_mapping/msg/HectorIterData.msg"
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/hector_mapping
)
_generate_msg_eus(hector_mapping
  "/home/brazo/workspace/rafi_ws/src/hector_slam/hector_mapping/msg/HectorIterData.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/hector_mapping
)

### Generating Services
_generate_srv_eus(hector_mapping
  "/home/brazo/workspace/rafi_ws/src/hector_slam/hector_mapping/srv/ResetMapping.srv"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Point.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Pose.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Quaternion.msg"
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/hector_mapping
)

### Generating Module File
_generate_module_eus(hector_mapping
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/hector_mapping
  "${ALL_GEN_OUTPUT_FILES_eus}"
)

add_custom_target(hector_mapping_generate_messages_eus
  DEPENDS ${ALL_GEN_OUTPUT_FILES_eus}
)
add_dependencies(hector_mapping_generate_messages hector_mapping_generate_messages_eus)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/brazo/workspace/rafi_ws/src/hector_slam/hector_mapping/msg/HectorDebugInfo.msg" NAME_WE)
add_dependencies(hector_mapping_generate_messages_eus _hector_mapping_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/brazo/workspace/rafi_ws/src/hector_slam/hector_mapping/msg/HectorIterData.msg" NAME_WE)
add_dependencies(hector_mapping_generate_messages_eus _hector_mapping_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/brazo/workspace/rafi_ws/src/hector_slam/hector_mapping/srv/ResetMapping.srv" NAME_WE)
add_dependencies(hector_mapping_generate_messages_eus _hector_mapping_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(hector_mapping_geneus)
add_dependencies(hector_mapping_geneus hector_mapping_generate_messages_eus)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS hector_mapping_generate_messages_eus)

### Section generating for lang: genlisp
### Generating Messages
_generate_msg_lisp(hector_mapping
  "/home/brazo/workspace/rafi_ws/src/hector_slam/hector_mapping/msg/HectorDebugInfo.msg"
  "${MSG_I_FLAGS}"
  "/home/brazo/workspace/rafi_ws/src/hector_slam/hector_mapping/msg/HectorIterData.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/hector_mapping
)
_generate_msg_lisp(hector_mapping
  "/home/brazo/workspace/rafi_ws/src/hector_slam/hector_mapping/msg/HectorIterData.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/hector_mapping
)

### Generating Services
_generate_srv_lisp(hector_mapping
  "/home/brazo/workspace/rafi_ws/src/hector_slam/hector_mapping/srv/ResetMapping.srv"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Point.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Pose.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Quaternion.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/hector_mapping
)

### Generating Module File
_generate_module_lisp(hector_mapping
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/hector_mapping
  "${ALL_GEN_OUTPUT_FILES_lisp}"
)

add_custom_target(hector_mapping_generate_messages_lisp
  DEPENDS ${ALL_GEN_OUTPUT_FILES_lisp}
)
add_dependencies(hector_mapping_generate_messages hector_mapping_generate_messages_lisp)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/brazo/workspace/rafi_ws/src/hector_slam/hector_mapping/msg/HectorDebugInfo.msg" NAME_WE)
add_dependencies(hector_mapping_generate_messages_lisp _hector_mapping_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/brazo/workspace/rafi_ws/src/hector_slam/hector_mapping/msg/HectorIterData.msg" NAME_WE)
add_dependencies(hector_mapping_generate_messages_lisp _hector_mapping_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/brazo/workspace/rafi_ws/src/hector_slam/hector_mapping/srv/ResetMapping.srv" NAME_WE)
add_dependencies(hector_mapping_generate_messages_lisp _hector_mapping_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(hector_mapping_genlisp)
add_dependencies(hector_mapping_genlisp hector_mapping_generate_messages_lisp)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS hector_mapping_generate_messages_lisp)

### Section generating for lang: gennodejs
### Generating Messages
_generate_msg_nodejs(hector_mapping
  "/home/brazo/workspace/rafi_ws/src/hector_slam/hector_mapping/msg/HectorDebugInfo.msg"
  "${MSG_I_FLAGS}"
  "/home/brazo/workspace/rafi_ws/src/hector_slam/hector_mapping/msg/HectorIterData.msg"
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/hector_mapping
)
_generate_msg_nodejs(hector_mapping
  "/home/brazo/workspace/rafi_ws/src/hector_slam/hector_mapping/msg/HectorIterData.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/hector_mapping
)

### Generating Services
_generate_srv_nodejs(hector_mapping
  "/home/brazo/workspace/rafi_ws/src/hector_slam/hector_mapping/srv/ResetMapping.srv"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Point.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Pose.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Quaternion.msg"
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/hector_mapping
)

### Generating Module File
_generate_module_nodejs(hector_mapping
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/hector_mapping
  "${ALL_GEN_OUTPUT_FILES_nodejs}"
)

add_custom_target(hector_mapping_generate_messages_nodejs
  DEPENDS ${ALL_GEN_OUTPUT_FILES_nodejs}
)
add_dependencies(hector_mapping_generate_messages hector_mapping_generate_messages_nodejs)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/brazo/workspace/rafi_ws/src/hector_slam/hector_mapping/msg/HectorDebugInfo.msg" NAME_WE)
add_dependencies(hector_mapping_generate_messages_nodejs _hector_mapping_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/brazo/workspace/rafi_ws/src/hector_slam/hector_mapping/msg/HectorIterData.msg" NAME_WE)
add_dependencies(hector_mapping_generate_messages_nodejs _hector_mapping_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/brazo/workspace/rafi_ws/src/hector_slam/hector_mapping/srv/ResetMapping.srv" NAME_WE)
add_dependencies(hector_mapping_generate_messages_nodejs _hector_mapping_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(hector_mapping_gennodejs)
add_dependencies(hector_mapping_gennodejs hector_mapping_generate_messages_nodejs)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS hector_mapping_generate_messages_nodejs)

### Section generating for lang: genpy
### Generating Messages
_generate_msg_py(hector_mapping
  "/home/brazo/workspace/rafi_ws/src/hector_slam/hector_mapping/msg/HectorDebugInfo.msg"
  "${MSG_I_FLAGS}"
  "/home/brazo/workspace/rafi_ws/src/hector_slam/hector_mapping/msg/HectorIterData.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/hector_mapping
)
_generate_msg_py(hector_mapping
  "/home/brazo/workspace/rafi_ws/src/hector_slam/hector_mapping/msg/HectorIterData.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/hector_mapping
)

### Generating Services
_generate_srv_py(hector_mapping
  "/home/brazo/workspace/rafi_ws/src/hector_slam/hector_mapping/srv/ResetMapping.srv"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Point.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Pose.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Quaternion.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/hector_mapping
)

### Generating Module File
_generate_module_py(hector_mapping
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/hector_mapping
  "${ALL_GEN_OUTPUT_FILES_py}"
)

add_custom_target(hector_mapping_generate_messages_py
  DEPENDS ${ALL_GEN_OUTPUT_FILES_py}
)
add_dependencies(hector_mapping_generate_messages hector_mapping_generate_messages_py)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/brazo/workspace/rafi_ws/src/hector_slam/hector_mapping/msg/HectorDebugInfo.msg" NAME_WE)
add_dependencies(hector_mapping_generate_messages_py _hector_mapping_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/brazo/workspace/rafi_ws/src/hector_slam/hector_mapping/msg/HectorIterData.msg" NAME_WE)
add_dependencies(hector_mapping_generate_messages_py _hector_mapping_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/brazo/workspace/rafi_ws/src/hector_slam/hector_mapping/srv/ResetMapping.srv" NAME_WE)
add_dependencies(hector_mapping_generate_messages_py _hector_mapping_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(hector_mapping_genpy)
add_dependencies(hector_mapping_genpy hector_mapping_generate_messages_py)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS hector_mapping_generate_messages_py)



if(gencpp_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/hector_mapping)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/hector_mapping
    DESTINATION ${gencpp_INSTALL_DIR}
  )
endif()
if(TARGET geometry_msgs_generate_messages_cpp)
  add_dependencies(hector_mapping_generate_messages_cpp geometry_msgs_generate_messages_cpp)
endif()

if(geneus_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/hector_mapping)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/hector_mapping
    DESTINATION ${geneus_INSTALL_DIR}
  )
endif()
if(TARGET geometry_msgs_generate_messages_eus)
  add_dependencies(hector_mapping_generate_messages_eus geometry_msgs_generate_messages_eus)
endif()

if(genlisp_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/hector_mapping)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/hector_mapping
    DESTINATION ${genlisp_INSTALL_DIR}
  )
endif()
if(TARGET geometry_msgs_generate_messages_lisp)
  add_dependencies(hector_mapping_generate_messages_lisp geometry_msgs_generate_messages_lisp)
endif()

if(gennodejs_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/hector_mapping)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/hector_mapping
    DESTINATION ${gennodejs_INSTALL_DIR}
  )
endif()
if(TARGET geometry_msgs_generate_messages_nodejs)
  add_dependencies(hector_mapping_generate_messages_nodejs geometry_msgs_generate_messages_nodejs)
endif()

if(genpy_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/hector_mapping)
  install(CODE "execute_process(COMMAND \"/usr/bin/python3\" -m compileall \"${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/hector_mapping\")")
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/hector_mapping
    DESTINATION ${genpy_INSTALL_DIR}
  )
endif()
if(TARGET geometry_msgs_generate_messages_py)
  add_dependencies(hector_mapping_generate_messages_py geometry_msgs_generate_messages_py)
endif()
