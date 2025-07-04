# generated from genmsg/cmake/pkg-genmsg.cmake.em

message(STATUS "franka_gripper: 29 messages, 0 services")

set(MSG_I_FLAGS "-Ifranka_gripper:/home/brazo/workspace/rafi_ws/devel/share/franka_gripper/msg;-Ifranka_gripper:/home/brazo/workspace/rafi_ws/src/franka_ros/franka_gripper/msg;-Iactionlib_msgs:/opt/ros/noetic/share/actionlib_msgs/cmake/../msg;-Istd_msgs:/opt/ros/noetic/share/std_msgs/cmake/../msg")

# Find all generators
find_package(gencpp REQUIRED)
find_package(geneus REQUIRED)
find_package(genlisp REQUIRED)
find_package(gennodejs REQUIRED)
find_package(genpy REQUIRED)

add_custom_target(franka_gripper_generate_messages ALL)

# verify that message/service dependencies have not changed since configure



get_filename_component(_filename "/home/brazo/workspace/rafi_ws/devel/share/franka_gripper/msg/GraspAction.msg" NAME_WE)
add_custom_target(_franka_gripper_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "franka_gripper" "/home/brazo/workspace/rafi_ws/devel/share/franka_gripper/msg/GraspAction.msg" "actionlib_msgs/GoalID:franka_gripper/GraspActionGoal:franka_gripper/GraspActionFeedback:std_msgs/Header:franka_gripper/GraspActionResult:franka_gripper/GraspEpsilon:franka_gripper/GraspGoal:franka_gripper/GraspFeedback:actionlib_msgs/GoalStatus:franka_gripper/GraspResult"
)

get_filename_component(_filename "/home/brazo/workspace/rafi_ws/devel/share/franka_gripper/msg/GraspActionGoal.msg" NAME_WE)
add_custom_target(_franka_gripper_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "franka_gripper" "/home/brazo/workspace/rafi_ws/devel/share/franka_gripper/msg/GraspActionGoal.msg" "actionlib_msgs/GoalID:std_msgs/Header:franka_gripper/GraspEpsilon:franka_gripper/GraspGoal"
)

get_filename_component(_filename "/home/brazo/workspace/rafi_ws/devel/share/franka_gripper/msg/GraspActionResult.msg" NAME_WE)
add_custom_target(_franka_gripper_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "franka_gripper" "/home/brazo/workspace/rafi_ws/devel/share/franka_gripper/msg/GraspActionResult.msg" "actionlib_msgs/GoalID:std_msgs/Header:actionlib_msgs/GoalStatus:franka_gripper/GraspResult"
)

get_filename_component(_filename "/home/brazo/workspace/rafi_ws/devel/share/franka_gripper/msg/GraspActionFeedback.msg" NAME_WE)
add_custom_target(_franka_gripper_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "franka_gripper" "/home/brazo/workspace/rafi_ws/devel/share/franka_gripper/msg/GraspActionFeedback.msg" "actionlib_msgs/GoalID:std_msgs/Header:actionlib_msgs/GoalStatus:franka_gripper/GraspFeedback"
)

get_filename_component(_filename "/home/brazo/workspace/rafi_ws/devel/share/franka_gripper/msg/GraspGoal.msg" NAME_WE)
add_custom_target(_franka_gripper_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "franka_gripper" "/home/brazo/workspace/rafi_ws/devel/share/franka_gripper/msg/GraspGoal.msg" "franka_gripper/GraspEpsilon"
)

get_filename_component(_filename "/home/brazo/workspace/rafi_ws/devel/share/franka_gripper/msg/GraspResult.msg" NAME_WE)
add_custom_target(_franka_gripper_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "franka_gripper" "/home/brazo/workspace/rafi_ws/devel/share/franka_gripper/msg/GraspResult.msg" ""
)

get_filename_component(_filename "/home/brazo/workspace/rafi_ws/devel/share/franka_gripper/msg/GraspFeedback.msg" NAME_WE)
add_custom_target(_franka_gripper_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "franka_gripper" "/home/brazo/workspace/rafi_ws/devel/share/franka_gripper/msg/GraspFeedback.msg" ""
)

get_filename_component(_filename "/home/brazo/workspace/rafi_ws/devel/share/franka_gripper/msg/HomingAction.msg" NAME_WE)
add_custom_target(_franka_gripper_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "franka_gripper" "/home/brazo/workspace/rafi_ws/devel/share/franka_gripper/msg/HomingAction.msg" "actionlib_msgs/GoalID:franka_gripper/HomingActionGoal:franka_gripper/HomingGoal:franka_gripper/HomingResult:franka_gripper/HomingActionFeedback:std_msgs/Header:franka_gripper/HomingFeedback:actionlib_msgs/GoalStatus:franka_gripper/HomingActionResult"
)

get_filename_component(_filename "/home/brazo/workspace/rafi_ws/devel/share/franka_gripper/msg/HomingActionGoal.msg" NAME_WE)
add_custom_target(_franka_gripper_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "franka_gripper" "/home/brazo/workspace/rafi_ws/devel/share/franka_gripper/msg/HomingActionGoal.msg" "actionlib_msgs/GoalID:std_msgs/Header:franka_gripper/HomingGoal"
)

get_filename_component(_filename "/home/brazo/workspace/rafi_ws/devel/share/franka_gripper/msg/HomingActionResult.msg" NAME_WE)
add_custom_target(_franka_gripper_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "franka_gripper" "/home/brazo/workspace/rafi_ws/devel/share/franka_gripper/msg/HomingActionResult.msg" "actionlib_msgs/GoalID:std_msgs/Header:franka_gripper/HomingResult:actionlib_msgs/GoalStatus"
)

get_filename_component(_filename "/home/brazo/workspace/rafi_ws/devel/share/franka_gripper/msg/HomingActionFeedback.msg" NAME_WE)
add_custom_target(_franka_gripper_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "franka_gripper" "/home/brazo/workspace/rafi_ws/devel/share/franka_gripper/msg/HomingActionFeedback.msg" "actionlib_msgs/GoalID:std_msgs/Header:franka_gripper/HomingFeedback:actionlib_msgs/GoalStatus"
)

get_filename_component(_filename "/home/brazo/workspace/rafi_ws/devel/share/franka_gripper/msg/HomingGoal.msg" NAME_WE)
add_custom_target(_franka_gripper_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "franka_gripper" "/home/brazo/workspace/rafi_ws/devel/share/franka_gripper/msg/HomingGoal.msg" ""
)

get_filename_component(_filename "/home/brazo/workspace/rafi_ws/devel/share/franka_gripper/msg/HomingResult.msg" NAME_WE)
add_custom_target(_franka_gripper_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "franka_gripper" "/home/brazo/workspace/rafi_ws/devel/share/franka_gripper/msg/HomingResult.msg" ""
)

get_filename_component(_filename "/home/brazo/workspace/rafi_ws/devel/share/franka_gripper/msg/HomingFeedback.msg" NAME_WE)
add_custom_target(_franka_gripper_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "franka_gripper" "/home/brazo/workspace/rafi_ws/devel/share/franka_gripper/msg/HomingFeedback.msg" ""
)

get_filename_component(_filename "/home/brazo/workspace/rafi_ws/devel/share/franka_gripper/msg/StopAction.msg" NAME_WE)
add_custom_target(_franka_gripper_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "franka_gripper" "/home/brazo/workspace/rafi_ws/devel/share/franka_gripper/msg/StopAction.msg" "actionlib_msgs/GoalID:franka_gripper/StopActionResult:std_msgs/Header:franka_gripper/StopFeedback:franka_gripper/StopActionGoal:franka_gripper/StopGoal:actionlib_msgs/GoalStatus:franka_gripper/StopActionFeedback:franka_gripper/StopResult"
)

get_filename_component(_filename "/home/brazo/workspace/rafi_ws/devel/share/franka_gripper/msg/StopActionGoal.msg" NAME_WE)
add_custom_target(_franka_gripper_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "franka_gripper" "/home/brazo/workspace/rafi_ws/devel/share/franka_gripper/msg/StopActionGoal.msg" "actionlib_msgs/GoalID:std_msgs/Header:franka_gripper/StopGoal"
)

get_filename_component(_filename "/home/brazo/workspace/rafi_ws/devel/share/franka_gripper/msg/StopActionResult.msg" NAME_WE)
add_custom_target(_franka_gripper_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "franka_gripper" "/home/brazo/workspace/rafi_ws/devel/share/franka_gripper/msg/StopActionResult.msg" "actionlib_msgs/GoalID:std_msgs/Header:actionlib_msgs/GoalStatus:franka_gripper/StopResult"
)

get_filename_component(_filename "/home/brazo/workspace/rafi_ws/devel/share/franka_gripper/msg/StopActionFeedback.msg" NAME_WE)
add_custom_target(_franka_gripper_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "franka_gripper" "/home/brazo/workspace/rafi_ws/devel/share/franka_gripper/msg/StopActionFeedback.msg" "actionlib_msgs/GoalID:std_msgs/Header:franka_gripper/StopFeedback:actionlib_msgs/GoalStatus"
)

get_filename_component(_filename "/home/brazo/workspace/rafi_ws/devel/share/franka_gripper/msg/StopGoal.msg" NAME_WE)
add_custom_target(_franka_gripper_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "franka_gripper" "/home/brazo/workspace/rafi_ws/devel/share/franka_gripper/msg/StopGoal.msg" ""
)

get_filename_component(_filename "/home/brazo/workspace/rafi_ws/devel/share/franka_gripper/msg/StopResult.msg" NAME_WE)
add_custom_target(_franka_gripper_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "franka_gripper" "/home/brazo/workspace/rafi_ws/devel/share/franka_gripper/msg/StopResult.msg" ""
)

get_filename_component(_filename "/home/brazo/workspace/rafi_ws/devel/share/franka_gripper/msg/StopFeedback.msg" NAME_WE)
add_custom_target(_franka_gripper_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "franka_gripper" "/home/brazo/workspace/rafi_ws/devel/share/franka_gripper/msg/StopFeedback.msg" ""
)

get_filename_component(_filename "/home/brazo/workspace/rafi_ws/devel/share/franka_gripper/msg/MoveAction.msg" NAME_WE)
add_custom_target(_franka_gripper_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "franka_gripper" "/home/brazo/workspace/rafi_ws/devel/share/franka_gripper/msg/MoveAction.msg" "actionlib_msgs/GoalID:std_msgs/Header:franka_gripper/MoveActionFeedback:franka_gripper/MoveResult:franka_gripper/MoveGoal:franka_gripper/MoveFeedback:actionlib_msgs/GoalStatus:franka_gripper/MoveActionGoal:franka_gripper/MoveActionResult"
)

get_filename_component(_filename "/home/brazo/workspace/rafi_ws/devel/share/franka_gripper/msg/MoveActionGoal.msg" NAME_WE)
add_custom_target(_franka_gripper_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "franka_gripper" "/home/brazo/workspace/rafi_ws/devel/share/franka_gripper/msg/MoveActionGoal.msg" "actionlib_msgs/GoalID:std_msgs/Header:franka_gripper/MoveGoal"
)

get_filename_component(_filename "/home/brazo/workspace/rafi_ws/devel/share/franka_gripper/msg/MoveActionResult.msg" NAME_WE)
add_custom_target(_franka_gripper_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "franka_gripper" "/home/brazo/workspace/rafi_ws/devel/share/franka_gripper/msg/MoveActionResult.msg" "actionlib_msgs/GoalID:std_msgs/Header:actionlib_msgs/GoalStatus:franka_gripper/MoveResult"
)

get_filename_component(_filename "/home/brazo/workspace/rafi_ws/devel/share/franka_gripper/msg/MoveActionFeedback.msg" NAME_WE)
add_custom_target(_franka_gripper_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "franka_gripper" "/home/brazo/workspace/rafi_ws/devel/share/franka_gripper/msg/MoveActionFeedback.msg" "actionlib_msgs/GoalID:std_msgs/Header:actionlib_msgs/GoalStatus:franka_gripper/MoveFeedback"
)

get_filename_component(_filename "/home/brazo/workspace/rafi_ws/devel/share/franka_gripper/msg/MoveGoal.msg" NAME_WE)
add_custom_target(_franka_gripper_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "franka_gripper" "/home/brazo/workspace/rafi_ws/devel/share/franka_gripper/msg/MoveGoal.msg" ""
)

get_filename_component(_filename "/home/brazo/workspace/rafi_ws/devel/share/franka_gripper/msg/MoveResult.msg" NAME_WE)
add_custom_target(_franka_gripper_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "franka_gripper" "/home/brazo/workspace/rafi_ws/devel/share/franka_gripper/msg/MoveResult.msg" ""
)

get_filename_component(_filename "/home/brazo/workspace/rafi_ws/devel/share/franka_gripper/msg/MoveFeedback.msg" NAME_WE)
add_custom_target(_franka_gripper_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "franka_gripper" "/home/brazo/workspace/rafi_ws/devel/share/franka_gripper/msg/MoveFeedback.msg" ""
)

get_filename_component(_filename "/home/brazo/workspace/rafi_ws/src/franka_ros/franka_gripper/msg/GraspEpsilon.msg" NAME_WE)
add_custom_target(_franka_gripper_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "franka_gripper" "/home/brazo/workspace/rafi_ws/src/franka_ros/franka_gripper/msg/GraspEpsilon.msg" ""
)

#
#  langs = gencpp;geneus;genlisp;gennodejs;genpy
#

### Section generating for lang: gencpp
### Generating Messages
_generate_msg_cpp(franka_gripper
  "/home/brazo/workspace/rafi_ws/devel/share/franka_gripper/msg/GraspAction.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/actionlib_msgs/cmake/../msg/GoalID.msg;/home/brazo/workspace/rafi_ws/devel/share/franka_gripper/msg/GraspActionGoal.msg;/home/brazo/workspace/rafi_ws/devel/share/franka_gripper/msg/GraspActionFeedback.msg;/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg;/home/brazo/workspace/rafi_ws/devel/share/franka_gripper/msg/GraspActionResult.msg;/home/brazo/workspace/rafi_ws/src/franka_ros/franka_gripper/msg/GraspEpsilon.msg;/home/brazo/workspace/rafi_ws/devel/share/franka_gripper/msg/GraspGoal.msg;/home/brazo/workspace/rafi_ws/devel/share/franka_gripper/msg/GraspFeedback.msg;/opt/ros/noetic/share/actionlib_msgs/cmake/../msg/GoalStatus.msg;/home/brazo/workspace/rafi_ws/devel/share/franka_gripper/msg/GraspResult.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/franka_gripper
)
_generate_msg_cpp(franka_gripper
  "/home/brazo/workspace/rafi_ws/devel/share/franka_gripper/msg/GraspActionGoal.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/actionlib_msgs/cmake/../msg/GoalID.msg;/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg;/home/brazo/workspace/rafi_ws/src/franka_ros/franka_gripper/msg/GraspEpsilon.msg;/home/brazo/workspace/rafi_ws/devel/share/franka_gripper/msg/GraspGoal.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/franka_gripper
)
_generate_msg_cpp(franka_gripper
  "/home/brazo/workspace/rafi_ws/devel/share/franka_gripper/msg/GraspActionResult.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/actionlib_msgs/cmake/../msg/GoalID.msg;/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/noetic/share/actionlib_msgs/cmake/../msg/GoalStatus.msg;/home/brazo/workspace/rafi_ws/devel/share/franka_gripper/msg/GraspResult.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/franka_gripper
)
_generate_msg_cpp(franka_gripper
  "/home/brazo/workspace/rafi_ws/devel/share/franka_gripper/msg/GraspActionFeedback.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/actionlib_msgs/cmake/../msg/GoalID.msg;/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/noetic/share/actionlib_msgs/cmake/../msg/GoalStatus.msg;/home/brazo/workspace/rafi_ws/devel/share/franka_gripper/msg/GraspFeedback.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/franka_gripper
)
_generate_msg_cpp(franka_gripper
  "/home/brazo/workspace/rafi_ws/devel/share/franka_gripper/msg/GraspGoal.msg"
  "${MSG_I_FLAGS}"
  "/home/brazo/workspace/rafi_ws/src/franka_ros/franka_gripper/msg/GraspEpsilon.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/franka_gripper
)
_generate_msg_cpp(franka_gripper
  "/home/brazo/workspace/rafi_ws/devel/share/franka_gripper/msg/GraspResult.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/franka_gripper
)
_generate_msg_cpp(franka_gripper
  "/home/brazo/workspace/rafi_ws/devel/share/franka_gripper/msg/GraspFeedback.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/franka_gripper
)
_generate_msg_cpp(franka_gripper
  "/home/brazo/workspace/rafi_ws/devel/share/franka_gripper/msg/HomingAction.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/actionlib_msgs/cmake/../msg/GoalID.msg;/home/brazo/workspace/rafi_ws/devel/share/franka_gripper/msg/HomingActionGoal.msg;/home/brazo/workspace/rafi_ws/devel/share/franka_gripper/msg/HomingGoal.msg;/home/brazo/workspace/rafi_ws/devel/share/franka_gripper/msg/HomingResult.msg;/home/brazo/workspace/rafi_ws/devel/share/franka_gripper/msg/HomingActionFeedback.msg;/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg;/home/brazo/workspace/rafi_ws/devel/share/franka_gripper/msg/HomingFeedback.msg;/opt/ros/noetic/share/actionlib_msgs/cmake/../msg/GoalStatus.msg;/home/brazo/workspace/rafi_ws/devel/share/franka_gripper/msg/HomingActionResult.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/franka_gripper
)
_generate_msg_cpp(franka_gripper
  "/home/brazo/workspace/rafi_ws/devel/share/franka_gripper/msg/HomingActionGoal.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/actionlib_msgs/cmake/../msg/GoalID.msg;/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg;/home/brazo/workspace/rafi_ws/devel/share/franka_gripper/msg/HomingGoal.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/franka_gripper
)
_generate_msg_cpp(franka_gripper
  "/home/brazo/workspace/rafi_ws/devel/share/franka_gripper/msg/HomingActionResult.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/actionlib_msgs/cmake/../msg/GoalID.msg;/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg;/home/brazo/workspace/rafi_ws/devel/share/franka_gripper/msg/HomingResult.msg;/opt/ros/noetic/share/actionlib_msgs/cmake/../msg/GoalStatus.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/franka_gripper
)
_generate_msg_cpp(franka_gripper
  "/home/brazo/workspace/rafi_ws/devel/share/franka_gripper/msg/HomingActionFeedback.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/actionlib_msgs/cmake/../msg/GoalID.msg;/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg;/home/brazo/workspace/rafi_ws/devel/share/franka_gripper/msg/HomingFeedback.msg;/opt/ros/noetic/share/actionlib_msgs/cmake/../msg/GoalStatus.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/franka_gripper
)
_generate_msg_cpp(franka_gripper
  "/home/brazo/workspace/rafi_ws/devel/share/franka_gripper/msg/HomingGoal.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/franka_gripper
)
_generate_msg_cpp(franka_gripper
  "/home/brazo/workspace/rafi_ws/devel/share/franka_gripper/msg/HomingResult.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/franka_gripper
)
_generate_msg_cpp(franka_gripper
  "/home/brazo/workspace/rafi_ws/devel/share/franka_gripper/msg/HomingFeedback.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/franka_gripper
)
_generate_msg_cpp(franka_gripper
  "/home/brazo/workspace/rafi_ws/devel/share/franka_gripper/msg/StopAction.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/actionlib_msgs/cmake/../msg/GoalID.msg;/home/brazo/workspace/rafi_ws/devel/share/franka_gripper/msg/StopActionResult.msg;/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg;/home/brazo/workspace/rafi_ws/devel/share/franka_gripper/msg/StopFeedback.msg;/home/brazo/workspace/rafi_ws/devel/share/franka_gripper/msg/StopActionGoal.msg;/home/brazo/workspace/rafi_ws/devel/share/franka_gripper/msg/StopGoal.msg;/opt/ros/noetic/share/actionlib_msgs/cmake/../msg/GoalStatus.msg;/home/brazo/workspace/rafi_ws/devel/share/franka_gripper/msg/StopActionFeedback.msg;/home/brazo/workspace/rafi_ws/devel/share/franka_gripper/msg/StopResult.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/franka_gripper
)
_generate_msg_cpp(franka_gripper
  "/home/brazo/workspace/rafi_ws/devel/share/franka_gripper/msg/StopActionGoal.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/actionlib_msgs/cmake/../msg/GoalID.msg;/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg;/home/brazo/workspace/rafi_ws/devel/share/franka_gripper/msg/StopGoal.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/franka_gripper
)
_generate_msg_cpp(franka_gripper
  "/home/brazo/workspace/rafi_ws/devel/share/franka_gripper/msg/StopActionResult.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/actionlib_msgs/cmake/../msg/GoalID.msg;/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/noetic/share/actionlib_msgs/cmake/../msg/GoalStatus.msg;/home/brazo/workspace/rafi_ws/devel/share/franka_gripper/msg/StopResult.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/franka_gripper
)
_generate_msg_cpp(franka_gripper
  "/home/brazo/workspace/rafi_ws/devel/share/franka_gripper/msg/StopActionFeedback.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/actionlib_msgs/cmake/../msg/GoalID.msg;/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg;/home/brazo/workspace/rafi_ws/devel/share/franka_gripper/msg/StopFeedback.msg;/opt/ros/noetic/share/actionlib_msgs/cmake/../msg/GoalStatus.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/franka_gripper
)
_generate_msg_cpp(franka_gripper
  "/home/brazo/workspace/rafi_ws/devel/share/franka_gripper/msg/StopGoal.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/franka_gripper
)
_generate_msg_cpp(franka_gripper
  "/home/brazo/workspace/rafi_ws/devel/share/franka_gripper/msg/StopResult.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/franka_gripper
)
_generate_msg_cpp(franka_gripper
  "/home/brazo/workspace/rafi_ws/devel/share/franka_gripper/msg/StopFeedback.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/franka_gripper
)
_generate_msg_cpp(franka_gripper
  "/home/brazo/workspace/rafi_ws/devel/share/franka_gripper/msg/MoveAction.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/actionlib_msgs/cmake/../msg/GoalID.msg;/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg;/home/brazo/workspace/rafi_ws/devel/share/franka_gripper/msg/MoveActionFeedback.msg;/home/brazo/workspace/rafi_ws/devel/share/franka_gripper/msg/MoveResult.msg;/home/brazo/workspace/rafi_ws/devel/share/franka_gripper/msg/MoveGoal.msg;/home/brazo/workspace/rafi_ws/devel/share/franka_gripper/msg/MoveFeedback.msg;/opt/ros/noetic/share/actionlib_msgs/cmake/../msg/GoalStatus.msg;/home/brazo/workspace/rafi_ws/devel/share/franka_gripper/msg/MoveActionGoal.msg;/home/brazo/workspace/rafi_ws/devel/share/franka_gripper/msg/MoveActionResult.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/franka_gripper
)
_generate_msg_cpp(franka_gripper
  "/home/brazo/workspace/rafi_ws/devel/share/franka_gripper/msg/MoveActionGoal.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/actionlib_msgs/cmake/../msg/GoalID.msg;/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg;/home/brazo/workspace/rafi_ws/devel/share/franka_gripper/msg/MoveGoal.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/franka_gripper
)
_generate_msg_cpp(franka_gripper
  "/home/brazo/workspace/rafi_ws/devel/share/franka_gripper/msg/MoveActionResult.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/actionlib_msgs/cmake/../msg/GoalID.msg;/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/noetic/share/actionlib_msgs/cmake/../msg/GoalStatus.msg;/home/brazo/workspace/rafi_ws/devel/share/franka_gripper/msg/MoveResult.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/franka_gripper
)
_generate_msg_cpp(franka_gripper
  "/home/brazo/workspace/rafi_ws/devel/share/franka_gripper/msg/MoveActionFeedback.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/actionlib_msgs/cmake/../msg/GoalID.msg;/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/noetic/share/actionlib_msgs/cmake/../msg/GoalStatus.msg;/home/brazo/workspace/rafi_ws/devel/share/franka_gripper/msg/MoveFeedback.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/franka_gripper
)
_generate_msg_cpp(franka_gripper
  "/home/brazo/workspace/rafi_ws/devel/share/franka_gripper/msg/MoveGoal.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/franka_gripper
)
_generate_msg_cpp(franka_gripper
  "/home/brazo/workspace/rafi_ws/devel/share/franka_gripper/msg/MoveResult.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/franka_gripper
)
_generate_msg_cpp(franka_gripper
  "/home/brazo/workspace/rafi_ws/devel/share/franka_gripper/msg/MoveFeedback.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/franka_gripper
)
_generate_msg_cpp(franka_gripper
  "/home/brazo/workspace/rafi_ws/src/franka_ros/franka_gripper/msg/GraspEpsilon.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/franka_gripper
)

### Generating Services

### Generating Module File
_generate_module_cpp(franka_gripper
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/franka_gripper
  "${ALL_GEN_OUTPUT_FILES_cpp}"
)

add_custom_target(franka_gripper_generate_messages_cpp
  DEPENDS ${ALL_GEN_OUTPUT_FILES_cpp}
)
add_dependencies(franka_gripper_generate_messages franka_gripper_generate_messages_cpp)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/brazo/workspace/rafi_ws/devel/share/franka_gripper/msg/GraspAction.msg" NAME_WE)
add_dependencies(franka_gripper_generate_messages_cpp _franka_gripper_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/brazo/workspace/rafi_ws/devel/share/franka_gripper/msg/GraspActionGoal.msg" NAME_WE)
add_dependencies(franka_gripper_generate_messages_cpp _franka_gripper_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/brazo/workspace/rafi_ws/devel/share/franka_gripper/msg/GraspActionResult.msg" NAME_WE)
add_dependencies(franka_gripper_generate_messages_cpp _franka_gripper_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/brazo/workspace/rafi_ws/devel/share/franka_gripper/msg/GraspActionFeedback.msg" NAME_WE)
add_dependencies(franka_gripper_generate_messages_cpp _franka_gripper_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/brazo/workspace/rafi_ws/devel/share/franka_gripper/msg/GraspGoal.msg" NAME_WE)
add_dependencies(franka_gripper_generate_messages_cpp _franka_gripper_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/brazo/workspace/rafi_ws/devel/share/franka_gripper/msg/GraspResult.msg" NAME_WE)
add_dependencies(franka_gripper_generate_messages_cpp _franka_gripper_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/brazo/workspace/rafi_ws/devel/share/franka_gripper/msg/GraspFeedback.msg" NAME_WE)
add_dependencies(franka_gripper_generate_messages_cpp _franka_gripper_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/brazo/workspace/rafi_ws/devel/share/franka_gripper/msg/HomingAction.msg" NAME_WE)
add_dependencies(franka_gripper_generate_messages_cpp _franka_gripper_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/brazo/workspace/rafi_ws/devel/share/franka_gripper/msg/HomingActionGoal.msg" NAME_WE)
add_dependencies(franka_gripper_generate_messages_cpp _franka_gripper_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/brazo/workspace/rafi_ws/devel/share/franka_gripper/msg/HomingActionResult.msg" NAME_WE)
add_dependencies(franka_gripper_generate_messages_cpp _franka_gripper_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/brazo/workspace/rafi_ws/devel/share/franka_gripper/msg/HomingActionFeedback.msg" NAME_WE)
add_dependencies(franka_gripper_generate_messages_cpp _franka_gripper_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/brazo/workspace/rafi_ws/devel/share/franka_gripper/msg/HomingGoal.msg" NAME_WE)
add_dependencies(franka_gripper_generate_messages_cpp _franka_gripper_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/brazo/workspace/rafi_ws/devel/share/franka_gripper/msg/HomingResult.msg" NAME_WE)
add_dependencies(franka_gripper_generate_messages_cpp _franka_gripper_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/brazo/workspace/rafi_ws/devel/share/franka_gripper/msg/HomingFeedback.msg" NAME_WE)
add_dependencies(franka_gripper_generate_messages_cpp _franka_gripper_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/brazo/workspace/rafi_ws/devel/share/franka_gripper/msg/StopAction.msg" NAME_WE)
add_dependencies(franka_gripper_generate_messages_cpp _franka_gripper_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/brazo/workspace/rafi_ws/devel/share/franka_gripper/msg/StopActionGoal.msg" NAME_WE)
add_dependencies(franka_gripper_generate_messages_cpp _franka_gripper_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/brazo/workspace/rafi_ws/devel/share/franka_gripper/msg/StopActionResult.msg" NAME_WE)
add_dependencies(franka_gripper_generate_messages_cpp _franka_gripper_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/brazo/workspace/rafi_ws/devel/share/franka_gripper/msg/StopActionFeedback.msg" NAME_WE)
add_dependencies(franka_gripper_generate_messages_cpp _franka_gripper_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/brazo/workspace/rafi_ws/devel/share/franka_gripper/msg/StopGoal.msg" NAME_WE)
add_dependencies(franka_gripper_generate_messages_cpp _franka_gripper_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/brazo/workspace/rafi_ws/devel/share/franka_gripper/msg/StopResult.msg" NAME_WE)
add_dependencies(franka_gripper_generate_messages_cpp _franka_gripper_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/brazo/workspace/rafi_ws/devel/share/franka_gripper/msg/StopFeedback.msg" NAME_WE)
add_dependencies(franka_gripper_generate_messages_cpp _franka_gripper_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/brazo/workspace/rafi_ws/devel/share/franka_gripper/msg/MoveAction.msg" NAME_WE)
add_dependencies(franka_gripper_generate_messages_cpp _franka_gripper_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/brazo/workspace/rafi_ws/devel/share/franka_gripper/msg/MoveActionGoal.msg" NAME_WE)
add_dependencies(franka_gripper_generate_messages_cpp _franka_gripper_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/brazo/workspace/rafi_ws/devel/share/franka_gripper/msg/MoveActionResult.msg" NAME_WE)
add_dependencies(franka_gripper_generate_messages_cpp _franka_gripper_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/brazo/workspace/rafi_ws/devel/share/franka_gripper/msg/MoveActionFeedback.msg" NAME_WE)
add_dependencies(franka_gripper_generate_messages_cpp _franka_gripper_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/brazo/workspace/rafi_ws/devel/share/franka_gripper/msg/MoveGoal.msg" NAME_WE)
add_dependencies(franka_gripper_generate_messages_cpp _franka_gripper_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/brazo/workspace/rafi_ws/devel/share/franka_gripper/msg/MoveResult.msg" NAME_WE)
add_dependencies(franka_gripper_generate_messages_cpp _franka_gripper_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/brazo/workspace/rafi_ws/devel/share/franka_gripper/msg/MoveFeedback.msg" NAME_WE)
add_dependencies(franka_gripper_generate_messages_cpp _franka_gripper_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/brazo/workspace/rafi_ws/src/franka_ros/franka_gripper/msg/GraspEpsilon.msg" NAME_WE)
add_dependencies(franka_gripper_generate_messages_cpp _franka_gripper_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(franka_gripper_gencpp)
add_dependencies(franka_gripper_gencpp franka_gripper_generate_messages_cpp)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS franka_gripper_generate_messages_cpp)

### Section generating for lang: geneus
### Generating Messages
_generate_msg_eus(franka_gripper
  "/home/brazo/workspace/rafi_ws/devel/share/franka_gripper/msg/GraspAction.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/actionlib_msgs/cmake/../msg/GoalID.msg;/home/brazo/workspace/rafi_ws/devel/share/franka_gripper/msg/GraspActionGoal.msg;/home/brazo/workspace/rafi_ws/devel/share/franka_gripper/msg/GraspActionFeedback.msg;/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg;/home/brazo/workspace/rafi_ws/devel/share/franka_gripper/msg/GraspActionResult.msg;/home/brazo/workspace/rafi_ws/src/franka_ros/franka_gripper/msg/GraspEpsilon.msg;/home/brazo/workspace/rafi_ws/devel/share/franka_gripper/msg/GraspGoal.msg;/home/brazo/workspace/rafi_ws/devel/share/franka_gripper/msg/GraspFeedback.msg;/opt/ros/noetic/share/actionlib_msgs/cmake/../msg/GoalStatus.msg;/home/brazo/workspace/rafi_ws/devel/share/franka_gripper/msg/GraspResult.msg"
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/franka_gripper
)
_generate_msg_eus(franka_gripper
  "/home/brazo/workspace/rafi_ws/devel/share/franka_gripper/msg/GraspActionGoal.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/actionlib_msgs/cmake/../msg/GoalID.msg;/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg;/home/brazo/workspace/rafi_ws/src/franka_ros/franka_gripper/msg/GraspEpsilon.msg;/home/brazo/workspace/rafi_ws/devel/share/franka_gripper/msg/GraspGoal.msg"
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/franka_gripper
)
_generate_msg_eus(franka_gripper
  "/home/brazo/workspace/rafi_ws/devel/share/franka_gripper/msg/GraspActionResult.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/actionlib_msgs/cmake/../msg/GoalID.msg;/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/noetic/share/actionlib_msgs/cmake/../msg/GoalStatus.msg;/home/brazo/workspace/rafi_ws/devel/share/franka_gripper/msg/GraspResult.msg"
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/franka_gripper
)
_generate_msg_eus(franka_gripper
  "/home/brazo/workspace/rafi_ws/devel/share/franka_gripper/msg/GraspActionFeedback.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/actionlib_msgs/cmake/../msg/GoalID.msg;/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/noetic/share/actionlib_msgs/cmake/../msg/GoalStatus.msg;/home/brazo/workspace/rafi_ws/devel/share/franka_gripper/msg/GraspFeedback.msg"
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/franka_gripper
)
_generate_msg_eus(franka_gripper
  "/home/brazo/workspace/rafi_ws/devel/share/franka_gripper/msg/GraspGoal.msg"
  "${MSG_I_FLAGS}"
  "/home/brazo/workspace/rafi_ws/src/franka_ros/franka_gripper/msg/GraspEpsilon.msg"
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/franka_gripper
)
_generate_msg_eus(franka_gripper
  "/home/brazo/workspace/rafi_ws/devel/share/franka_gripper/msg/GraspResult.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/franka_gripper
)
_generate_msg_eus(franka_gripper
  "/home/brazo/workspace/rafi_ws/devel/share/franka_gripper/msg/GraspFeedback.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/franka_gripper
)
_generate_msg_eus(franka_gripper
  "/home/brazo/workspace/rafi_ws/devel/share/franka_gripper/msg/HomingAction.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/actionlib_msgs/cmake/../msg/GoalID.msg;/home/brazo/workspace/rafi_ws/devel/share/franka_gripper/msg/HomingActionGoal.msg;/home/brazo/workspace/rafi_ws/devel/share/franka_gripper/msg/HomingGoal.msg;/home/brazo/workspace/rafi_ws/devel/share/franka_gripper/msg/HomingResult.msg;/home/brazo/workspace/rafi_ws/devel/share/franka_gripper/msg/HomingActionFeedback.msg;/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg;/home/brazo/workspace/rafi_ws/devel/share/franka_gripper/msg/HomingFeedback.msg;/opt/ros/noetic/share/actionlib_msgs/cmake/../msg/GoalStatus.msg;/home/brazo/workspace/rafi_ws/devel/share/franka_gripper/msg/HomingActionResult.msg"
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/franka_gripper
)
_generate_msg_eus(franka_gripper
  "/home/brazo/workspace/rafi_ws/devel/share/franka_gripper/msg/HomingActionGoal.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/actionlib_msgs/cmake/../msg/GoalID.msg;/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg;/home/brazo/workspace/rafi_ws/devel/share/franka_gripper/msg/HomingGoal.msg"
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/franka_gripper
)
_generate_msg_eus(franka_gripper
  "/home/brazo/workspace/rafi_ws/devel/share/franka_gripper/msg/HomingActionResult.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/actionlib_msgs/cmake/../msg/GoalID.msg;/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg;/home/brazo/workspace/rafi_ws/devel/share/franka_gripper/msg/HomingResult.msg;/opt/ros/noetic/share/actionlib_msgs/cmake/../msg/GoalStatus.msg"
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/franka_gripper
)
_generate_msg_eus(franka_gripper
  "/home/brazo/workspace/rafi_ws/devel/share/franka_gripper/msg/HomingActionFeedback.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/actionlib_msgs/cmake/../msg/GoalID.msg;/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg;/home/brazo/workspace/rafi_ws/devel/share/franka_gripper/msg/HomingFeedback.msg;/opt/ros/noetic/share/actionlib_msgs/cmake/../msg/GoalStatus.msg"
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/franka_gripper
)
_generate_msg_eus(franka_gripper
  "/home/brazo/workspace/rafi_ws/devel/share/franka_gripper/msg/HomingGoal.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/franka_gripper
)
_generate_msg_eus(franka_gripper
  "/home/brazo/workspace/rafi_ws/devel/share/franka_gripper/msg/HomingResult.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/franka_gripper
)
_generate_msg_eus(franka_gripper
  "/home/brazo/workspace/rafi_ws/devel/share/franka_gripper/msg/HomingFeedback.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/franka_gripper
)
_generate_msg_eus(franka_gripper
  "/home/brazo/workspace/rafi_ws/devel/share/franka_gripper/msg/StopAction.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/actionlib_msgs/cmake/../msg/GoalID.msg;/home/brazo/workspace/rafi_ws/devel/share/franka_gripper/msg/StopActionResult.msg;/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg;/home/brazo/workspace/rafi_ws/devel/share/franka_gripper/msg/StopFeedback.msg;/home/brazo/workspace/rafi_ws/devel/share/franka_gripper/msg/StopActionGoal.msg;/home/brazo/workspace/rafi_ws/devel/share/franka_gripper/msg/StopGoal.msg;/opt/ros/noetic/share/actionlib_msgs/cmake/../msg/GoalStatus.msg;/home/brazo/workspace/rafi_ws/devel/share/franka_gripper/msg/StopActionFeedback.msg;/home/brazo/workspace/rafi_ws/devel/share/franka_gripper/msg/StopResult.msg"
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/franka_gripper
)
_generate_msg_eus(franka_gripper
  "/home/brazo/workspace/rafi_ws/devel/share/franka_gripper/msg/StopActionGoal.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/actionlib_msgs/cmake/../msg/GoalID.msg;/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg;/home/brazo/workspace/rafi_ws/devel/share/franka_gripper/msg/StopGoal.msg"
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/franka_gripper
)
_generate_msg_eus(franka_gripper
  "/home/brazo/workspace/rafi_ws/devel/share/franka_gripper/msg/StopActionResult.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/actionlib_msgs/cmake/../msg/GoalID.msg;/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/noetic/share/actionlib_msgs/cmake/../msg/GoalStatus.msg;/home/brazo/workspace/rafi_ws/devel/share/franka_gripper/msg/StopResult.msg"
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/franka_gripper
)
_generate_msg_eus(franka_gripper
  "/home/brazo/workspace/rafi_ws/devel/share/franka_gripper/msg/StopActionFeedback.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/actionlib_msgs/cmake/../msg/GoalID.msg;/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg;/home/brazo/workspace/rafi_ws/devel/share/franka_gripper/msg/StopFeedback.msg;/opt/ros/noetic/share/actionlib_msgs/cmake/../msg/GoalStatus.msg"
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/franka_gripper
)
_generate_msg_eus(franka_gripper
  "/home/brazo/workspace/rafi_ws/devel/share/franka_gripper/msg/StopGoal.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/franka_gripper
)
_generate_msg_eus(franka_gripper
  "/home/brazo/workspace/rafi_ws/devel/share/franka_gripper/msg/StopResult.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/franka_gripper
)
_generate_msg_eus(franka_gripper
  "/home/brazo/workspace/rafi_ws/devel/share/franka_gripper/msg/StopFeedback.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/franka_gripper
)
_generate_msg_eus(franka_gripper
  "/home/brazo/workspace/rafi_ws/devel/share/franka_gripper/msg/MoveAction.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/actionlib_msgs/cmake/../msg/GoalID.msg;/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg;/home/brazo/workspace/rafi_ws/devel/share/franka_gripper/msg/MoveActionFeedback.msg;/home/brazo/workspace/rafi_ws/devel/share/franka_gripper/msg/MoveResult.msg;/home/brazo/workspace/rafi_ws/devel/share/franka_gripper/msg/MoveGoal.msg;/home/brazo/workspace/rafi_ws/devel/share/franka_gripper/msg/MoveFeedback.msg;/opt/ros/noetic/share/actionlib_msgs/cmake/../msg/GoalStatus.msg;/home/brazo/workspace/rafi_ws/devel/share/franka_gripper/msg/MoveActionGoal.msg;/home/brazo/workspace/rafi_ws/devel/share/franka_gripper/msg/MoveActionResult.msg"
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/franka_gripper
)
_generate_msg_eus(franka_gripper
  "/home/brazo/workspace/rafi_ws/devel/share/franka_gripper/msg/MoveActionGoal.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/actionlib_msgs/cmake/../msg/GoalID.msg;/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg;/home/brazo/workspace/rafi_ws/devel/share/franka_gripper/msg/MoveGoal.msg"
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/franka_gripper
)
_generate_msg_eus(franka_gripper
  "/home/brazo/workspace/rafi_ws/devel/share/franka_gripper/msg/MoveActionResult.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/actionlib_msgs/cmake/../msg/GoalID.msg;/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/noetic/share/actionlib_msgs/cmake/../msg/GoalStatus.msg;/home/brazo/workspace/rafi_ws/devel/share/franka_gripper/msg/MoveResult.msg"
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/franka_gripper
)
_generate_msg_eus(franka_gripper
  "/home/brazo/workspace/rafi_ws/devel/share/franka_gripper/msg/MoveActionFeedback.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/actionlib_msgs/cmake/../msg/GoalID.msg;/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/noetic/share/actionlib_msgs/cmake/../msg/GoalStatus.msg;/home/brazo/workspace/rafi_ws/devel/share/franka_gripper/msg/MoveFeedback.msg"
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/franka_gripper
)
_generate_msg_eus(franka_gripper
  "/home/brazo/workspace/rafi_ws/devel/share/franka_gripper/msg/MoveGoal.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/franka_gripper
)
_generate_msg_eus(franka_gripper
  "/home/brazo/workspace/rafi_ws/devel/share/franka_gripper/msg/MoveResult.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/franka_gripper
)
_generate_msg_eus(franka_gripper
  "/home/brazo/workspace/rafi_ws/devel/share/franka_gripper/msg/MoveFeedback.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/franka_gripper
)
_generate_msg_eus(franka_gripper
  "/home/brazo/workspace/rafi_ws/src/franka_ros/franka_gripper/msg/GraspEpsilon.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/franka_gripper
)

### Generating Services

### Generating Module File
_generate_module_eus(franka_gripper
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/franka_gripper
  "${ALL_GEN_OUTPUT_FILES_eus}"
)

add_custom_target(franka_gripper_generate_messages_eus
  DEPENDS ${ALL_GEN_OUTPUT_FILES_eus}
)
add_dependencies(franka_gripper_generate_messages franka_gripper_generate_messages_eus)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/brazo/workspace/rafi_ws/devel/share/franka_gripper/msg/GraspAction.msg" NAME_WE)
add_dependencies(franka_gripper_generate_messages_eus _franka_gripper_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/brazo/workspace/rafi_ws/devel/share/franka_gripper/msg/GraspActionGoal.msg" NAME_WE)
add_dependencies(franka_gripper_generate_messages_eus _franka_gripper_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/brazo/workspace/rafi_ws/devel/share/franka_gripper/msg/GraspActionResult.msg" NAME_WE)
add_dependencies(franka_gripper_generate_messages_eus _franka_gripper_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/brazo/workspace/rafi_ws/devel/share/franka_gripper/msg/GraspActionFeedback.msg" NAME_WE)
add_dependencies(franka_gripper_generate_messages_eus _franka_gripper_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/brazo/workspace/rafi_ws/devel/share/franka_gripper/msg/GraspGoal.msg" NAME_WE)
add_dependencies(franka_gripper_generate_messages_eus _franka_gripper_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/brazo/workspace/rafi_ws/devel/share/franka_gripper/msg/GraspResult.msg" NAME_WE)
add_dependencies(franka_gripper_generate_messages_eus _franka_gripper_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/brazo/workspace/rafi_ws/devel/share/franka_gripper/msg/GraspFeedback.msg" NAME_WE)
add_dependencies(franka_gripper_generate_messages_eus _franka_gripper_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/brazo/workspace/rafi_ws/devel/share/franka_gripper/msg/HomingAction.msg" NAME_WE)
add_dependencies(franka_gripper_generate_messages_eus _franka_gripper_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/brazo/workspace/rafi_ws/devel/share/franka_gripper/msg/HomingActionGoal.msg" NAME_WE)
add_dependencies(franka_gripper_generate_messages_eus _franka_gripper_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/brazo/workspace/rafi_ws/devel/share/franka_gripper/msg/HomingActionResult.msg" NAME_WE)
add_dependencies(franka_gripper_generate_messages_eus _franka_gripper_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/brazo/workspace/rafi_ws/devel/share/franka_gripper/msg/HomingActionFeedback.msg" NAME_WE)
add_dependencies(franka_gripper_generate_messages_eus _franka_gripper_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/brazo/workspace/rafi_ws/devel/share/franka_gripper/msg/HomingGoal.msg" NAME_WE)
add_dependencies(franka_gripper_generate_messages_eus _franka_gripper_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/brazo/workspace/rafi_ws/devel/share/franka_gripper/msg/HomingResult.msg" NAME_WE)
add_dependencies(franka_gripper_generate_messages_eus _franka_gripper_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/brazo/workspace/rafi_ws/devel/share/franka_gripper/msg/HomingFeedback.msg" NAME_WE)
add_dependencies(franka_gripper_generate_messages_eus _franka_gripper_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/brazo/workspace/rafi_ws/devel/share/franka_gripper/msg/StopAction.msg" NAME_WE)
add_dependencies(franka_gripper_generate_messages_eus _franka_gripper_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/brazo/workspace/rafi_ws/devel/share/franka_gripper/msg/StopActionGoal.msg" NAME_WE)
add_dependencies(franka_gripper_generate_messages_eus _franka_gripper_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/brazo/workspace/rafi_ws/devel/share/franka_gripper/msg/StopActionResult.msg" NAME_WE)
add_dependencies(franka_gripper_generate_messages_eus _franka_gripper_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/brazo/workspace/rafi_ws/devel/share/franka_gripper/msg/StopActionFeedback.msg" NAME_WE)
add_dependencies(franka_gripper_generate_messages_eus _franka_gripper_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/brazo/workspace/rafi_ws/devel/share/franka_gripper/msg/StopGoal.msg" NAME_WE)
add_dependencies(franka_gripper_generate_messages_eus _franka_gripper_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/brazo/workspace/rafi_ws/devel/share/franka_gripper/msg/StopResult.msg" NAME_WE)
add_dependencies(franka_gripper_generate_messages_eus _franka_gripper_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/brazo/workspace/rafi_ws/devel/share/franka_gripper/msg/StopFeedback.msg" NAME_WE)
add_dependencies(franka_gripper_generate_messages_eus _franka_gripper_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/brazo/workspace/rafi_ws/devel/share/franka_gripper/msg/MoveAction.msg" NAME_WE)
add_dependencies(franka_gripper_generate_messages_eus _franka_gripper_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/brazo/workspace/rafi_ws/devel/share/franka_gripper/msg/MoveActionGoal.msg" NAME_WE)
add_dependencies(franka_gripper_generate_messages_eus _franka_gripper_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/brazo/workspace/rafi_ws/devel/share/franka_gripper/msg/MoveActionResult.msg" NAME_WE)
add_dependencies(franka_gripper_generate_messages_eus _franka_gripper_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/brazo/workspace/rafi_ws/devel/share/franka_gripper/msg/MoveActionFeedback.msg" NAME_WE)
add_dependencies(franka_gripper_generate_messages_eus _franka_gripper_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/brazo/workspace/rafi_ws/devel/share/franka_gripper/msg/MoveGoal.msg" NAME_WE)
add_dependencies(franka_gripper_generate_messages_eus _franka_gripper_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/brazo/workspace/rafi_ws/devel/share/franka_gripper/msg/MoveResult.msg" NAME_WE)
add_dependencies(franka_gripper_generate_messages_eus _franka_gripper_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/brazo/workspace/rafi_ws/devel/share/franka_gripper/msg/MoveFeedback.msg" NAME_WE)
add_dependencies(franka_gripper_generate_messages_eus _franka_gripper_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/brazo/workspace/rafi_ws/src/franka_ros/franka_gripper/msg/GraspEpsilon.msg" NAME_WE)
add_dependencies(franka_gripper_generate_messages_eus _franka_gripper_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(franka_gripper_geneus)
add_dependencies(franka_gripper_geneus franka_gripper_generate_messages_eus)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS franka_gripper_generate_messages_eus)

### Section generating for lang: genlisp
### Generating Messages
_generate_msg_lisp(franka_gripper
  "/home/brazo/workspace/rafi_ws/devel/share/franka_gripper/msg/GraspAction.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/actionlib_msgs/cmake/../msg/GoalID.msg;/home/brazo/workspace/rafi_ws/devel/share/franka_gripper/msg/GraspActionGoal.msg;/home/brazo/workspace/rafi_ws/devel/share/franka_gripper/msg/GraspActionFeedback.msg;/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg;/home/brazo/workspace/rafi_ws/devel/share/franka_gripper/msg/GraspActionResult.msg;/home/brazo/workspace/rafi_ws/src/franka_ros/franka_gripper/msg/GraspEpsilon.msg;/home/brazo/workspace/rafi_ws/devel/share/franka_gripper/msg/GraspGoal.msg;/home/brazo/workspace/rafi_ws/devel/share/franka_gripper/msg/GraspFeedback.msg;/opt/ros/noetic/share/actionlib_msgs/cmake/../msg/GoalStatus.msg;/home/brazo/workspace/rafi_ws/devel/share/franka_gripper/msg/GraspResult.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/franka_gripper
)
_generate_msg_lisp(franka_gripper
  "/home/brazo/workspace/rafi_ws/devel/share/franka_gripper/msg/GraspActionGoal.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/actionlib_msgs/cmake/../msg/GoalID.msg;/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg;/home/brazo/workspace/rafi_ws/src/franka_ros/franka_gripper/msg/GraspEpsilon.msg;/home/brazo/workspace/rafi_ws/devel/share/franka_gripper/msg/GraspGoal.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/franka_gripper
)
_generate_msg_lisp(franka_gripper
  "/home/brazo/workspace/rafi_ws/devel/share/franka_gripper/msg/GraspActionResult.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/actionlib_msgs/cmake/../msg/GoalID.msg;/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/noetic/share/actionlib_msgs/cmake/../msg/GoalStatus.msg;/home/brazo/workspace/rafi_ws/devel/share/franka_gripper/msg/GraspResult.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/franka_gripper
)
_generate_msg_lisp(franka_gripper
  "/home/brazo/workspace/rafi_ws/devel/share/franka_gripper/msg/GraspActionFeedback.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/actionlib_msgs/cmake/../msg/GoalID.msg;/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/noetic/share/actionlib_msgs/cmake/../msg/GoalStatus.msg;/home/brazo/workspace/rafi_ws/devel/share/franka_gripper/msg/GraspFeedback.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/franka_gripper
)
_generate_msg_lisp(franka_gripper
  "/home/brazo/workspace/rafi_ws/devel/share/franka_gripper/msg/GraspGoal.msg"
  "${MSG_I_FLAGS}"
  "/home/brazo/workspace/rafi_ws/src/franka_ros/franka_gripper/msg/GraspEpsilon.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/franka_gripper
)
_generate_msg_lisp(franka_gripper
  "/home/brazo/workspace/rafi_ws/devel/share/franka_gripper/msg/GraspResult.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/franka_gripper
)
_generate_msg_lisp(franka_gripper
  "/home/brazo/workspace/rafi_ws/devel/share/franka_gripper/msg/GraspFeedback.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/franka_gripper
)
_generate_msg_lisp(franka_gripper
  "/home/brazo/workspace/rafi_ws/devel/share/franka_gripper/msg/HomingAction.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/actionlib_msgs/cmake/../msg/GoalID.msg;/home/brazo/workspace/rafi_ws/devel/share/franka_gripper/msg/HomingActionGoal.msg;/home/brazo/workspace/rafi_ws/devel/share/franka_gripper/msg/HomingGoal.msg;/home/brazo/workspace/rafi_ws/devel/share/franka_gripper/msg/HomingResult.msg;/home/brazo/workspace/rafi_ws/devel/share/franka_gripper/msg/HomingActionFeedback.msg;/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg;/home/brazo/workspace/rafi_ws/devel/share/franka_gripper/msg/HomingFeedback.msg;/opt/ros/noetic/share/actionlib_msgs/cmake/../msg/GoalStatus.msg;/home/brazo/workspace/rafi_ws/devel/share/franka_gripper/msg/HomingActionResult.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/franka_gripper
)
_generate_msg_lisp(franka_gripper
  "/home/brazo/workspace/rafi_ws/devel/share/franka_gripper/msg/HomingActionGoal.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/actionlib_msgs/cmake/../msg/GoalID.msg;/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg;/home/brazo/workspace/rafi_ws/devel/share/franka_gripper/msg/HomingGoal.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/franka_gripper
)
_generate_msg_lisp(franka_gripper
  "/home/brazo/workspace/rafi_ws/devel/share/franka_gripper/msg/HomingActionResult.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/actionlib_msgs/cmake/../msg/GoalID.msg;/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg;/home/brazo/workspace/rafi_ws/devel/share/franka_gripper/msg/HomingResult.msg;/opt/ros/noetic/share/actionlib_msgs/cmake/../msg/GoalStatus.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/franka_gripper
)
_generate_msg_lisp(franka_gripper
  "/home/brazo/workspace/rafi_ws/devel/share/franka_gripper/msg/HomingActionFeedback.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/actionlib_msgs/cmake/../msg/GoalID.msg;/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg;/home/brazo/workspace/rafi_ws/devel/share/franka_gripper/msg/HomingFeedback.msg;/opt/ros/noetic/share/actionlib_msgs/cmake/../msg/GoalStatus.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/franka_gripper
)
_generate_msg_lisp(franka_gripper
  "/home/brazo/workspace/rafi_ws/devel/share/franka_gripper/msg/HomingGoal.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/franka_gripper
)
_generate_msg_lisp(franka_gripper
  "/home/brazo/workspace/rafi_ws/devel/share/franka_gripper/msg/HomingResult.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/franka_gripper
)
_generate_msg_lisp(franka_gripper
  "/home/brazo/workspace/rafi_ws/devel/share/franka_gripper/msg/HomingFeedback.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/franka_gripper
)
_generate_msg_lisp(franka_gripper
  "/home/brazo/workspace/rafi_ws/devel/share/franka_gripper/msg/StopAction.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/actionlib_msgs/cmake/../msg/GoalID.msg;/home/brazo/workspace/rafi_ws/devel/share/franka_gripper/msg/StopActionResult.msg;/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg;/home/brazo/workspace/rafi_ws/devel/share/franka_gripper/msg/StopFeedback.msg;/home/brazo/workspace/rafi_ws/devel/share/franka_gripper/msg/StopActionGoal.msg;/home/brazo/workspace/rafi_ws/devel/share/franka_gripper/msg/StopGoal.msg;/opt/ros/noetic/share/actionlib_msgs/cmake/../msg/GoalStatus.msg;/home/brazo/workspace/rafi_ws/devel/share/franka_gripper/msg/StopActionFeedback.msg;/home/brazo/workspace/rafi_ws/devel/share/franka_gripper/msg/StopResult.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/franka_gripper
)
_generate_msg_lisp(franka_gripper
  "/home/brazo/workspace/rafi_ws/devel/share/franka_gripper/msg/StopActionGoal.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/actionlib_msgs/cmake/../msg/GoalID.msg;/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg;/home/brazo/workspace/rafi_ws/devel/share/franka_gripper/msg/StopGoal.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/franka_gripper
)
_generate_msg_lisp(franka_gripper
  "/home/brazo/workspace/rafi_ws/devel/share/franka_gripper/msg/StopActionResult.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/actionlib_msgs/cmake/../msg/GoalID.msg;/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/noetic/share/actionlib_msgs/cmake/../msg/GoalStatus.msg;/home/brazo/workspace/rafi_ws/devel/share/franka_gripper/msg/StopResult.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/franka_gripper
)
_generate_msg_lisp(franka_gripper
  "/home/brazo/workspace/rafi_ws/devel/share/franka_gripper/msg/StopActionFeedback.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/actionlib_msgs/cmake/../msg/GoalID.msg;/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg;/home/brazo/workspace/rafi_ws/devel/share/franka_gripper/msg/StopFeedback.msg;/opt/ros/noetic/share/actionlib_msgs/cmake/../msg/GoalStatus.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/franka_gripper
)
_generate_msg_lisp(franka_gripper
  "/home/brazo/workspace/rafi_ws/devel/share/franka_gripper/msg/StopGoal.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/franka_gripper
)
_generate_msg_lisp(franka_gripper
  "/home/brazo/workspace/rafi_ws/devel/share/franka_gripper/msg/StopResult.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/franka_gripper
)
_generate_msg_lisp(franka_gripper
  "/home/brazo/workspace/rafi_ws/devel/share/franka_gripper/msg/StopFeedback.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/franka_gripper
)
_generate_msg_lisp(franka_gripper
  "/home/brazo/workspace/rafi_ws/devel/share/franka_gripper/msg/MoveAction.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/actionlib_msgs/cmake/../msg/GoalID.msg;/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg;/home/brazo/workspace/rafi_ws/devel/share/franka_gripper/msg/MoveActionFeedback.msg;/home/brazo/workspace/rafi_ws/devel/share/franka_gripper/msg/MoveResult.msg;/home/brazo/workspace/rafi_ws/devel/share/franka_gripper/msg/MoveGoal.msg;/home/brazo/workspace/rafi_ws/devel/share/franka_gripper/msg/MoveFeedback.msg;/opt/ros/noetic/share/actionlib_msgs/cmake/../msg/GoalStatus.msg;/home/brazo/workspace/rafi_ws/devel/share/franka_gripper/msg/MoveActionGoal.msg;/home/brazo/workspace/rafi_ws/devel/share/franka_gripper/msg/MoveActionResult.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/franka_gripper
)
_generate_msg_lisp(franka_gripper
  "/home/brazo/workspace/rafi_ws/devel/share/franka_gripper/msg/MoveActionGoal.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/actionlib_msgs/cmake/../msg/GoalID.msg;/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg;/home/brazo/workspace/rafi_ws/devel/share/franka_gripper/msg/MoveGoal.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/franka_gripper
)
_generate_msg_lisp(franka_gripper
  "/home/brazo/workspace/rafi_ws/devel/share/franka_gripper/msg/MoveActionResult.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/actionlib_msgs/cmake/../msg/GoalID.msg;/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/noetic/share/actionlib_msgs/cmake/../msg/GoalStatus.msg;/home/brazo/workspace/rafi_ws/devel/share/franka_gripper/msg/MoveResult.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/franka_gripper
)
_generate_msg_lisp(franka_gripper
  "/home/brazo/workspace/rafi_ws/devel/share/franka_gripper/msg/MoveActionFeedback.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/actionlib_msgs/cmake/../msg/GoalID.msg;/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/noetic/share/actionlib_msgs/cmake/../msg/GoalStatus.msg;/home/brazo/workspace/rafi_ws/devel/share/franka_gripper/msg/MoveFeedback.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/franka_gripper
)
_generate_msg_lisp(franka_gripper
  "/home/brazo/workspace/rafi_ws/devel/share/franka_gripper/msg/MoveGoal.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/franka_gripper
)
_generate_msg_lisp(franka_gripper
  "/home/brazo/workspace/rafi_ws/devel/share/franka_gripper/msg/MoveResult.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/franka_gripper
)
_generate_msg_lisp(franka_gripper
  "/home/brazo/workspace/rafi_ws/devel/share/franka_gripper/msg/MoveFeedback.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/franka_gripper
)
_generate_msg_lisp(franka_gripper
  "/home/brazo/workspace/rafi_ws/src/franka_ros/franka_gripper/msg/GraspEpsilon.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/franka_gripper
)

### Generating Services

### Generating Module File
_generate_module_lisp(franka_gripper
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/franka_gripper
  "${ALL_GEN_OUTPUT_FILES_lisp}"
)

add_custom_target(franka_gripper_generate_messages_lisp
  DEPENDS ${ALL_GEN_OUTPUT_FILES_lisp}
)
add_dependencies(franka_gripper_generate_messages franka_gripper_generate_messages_lisp)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/brazo/workspace/rafi_ws/devel/share/franka_gripper/msg/GraspAction.msg" NAME_WE)
add_dependencies(franka_gripper_generate_messages_lisp _franka_gripper_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/brazo/workspace/rafi_ws/devel/share/franka_gripper/msg/GraspActionGoal.msg" NAME_WE)
add_dependencies(franka_gripper_generate_messages_lisp _franka_gripper_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/brazo/workspace/rafi_ws/devel/share/franka_gripper/msg/GraspActionResult.msg" NAME_WE)
add_dependencies(franka_gripper_generate_messages_lisp _franka_gripper_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/brazo/workspace/rafi_ws/devel/share/franka_gripper/msg/GraspActionFeedback.msg" NAME_WE)
add_dependencies(franka_gripper_generate_messages_lisp _franka_gripper_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/brazo/workspace/rafi_ws/devel/share/franka_gripper/msg/GraspGoal.msg" NAME_WE)
add_dependencies(franka_gripper_generate_messages_lisp _franka_gripper_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/brazo/workspace/rafi_ws/devel/share/franka_gripper/msg/GraspResult.msg" NAME_WE)
add_dependencies(franka_gripper_generate_messages_lisp _franka_gripper_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/brazo/workspace/rafi_ws/devel/share/franka_gripper/msg/GraspFeedback.msg" NAME_WE)
add_dependencies(franka_gripper_generate_messages_lisp _franka_gripper_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/brazo/workspace/rafi_ws/devel/share/franka_gripper/msg/HomingAction.msg" NAME_WE)
add_dependencies(franka_gripper_generate_messages_lisp _franka_gripper_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/brazo/workspace/rafi_ws/devel/share/franka_gripper/msg/HomingActionGoal.msg" NAME_WE)
add_dependencies(franka_gripper_generate_messages_lisp _franka_gripper_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/brazo/workspace/rafi_ws/devel/share/franka_gripper/msg/HomingActionResult.msg" NAME_WE)
add_dependencies(franka_gripper_generate_messages_lisp _franka_gripper_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/brazo/workspace/rafi_ws/devel/share/franka_gripper/msg/HomingActionFeedback.msg" NAME_WE)
add_dependencies(franka_gripper_generate_messages_lisp _franka_gripper_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/brazo/workspace/rafi_ws/devel/share/franka_gripper/msg/HomingGoal.msg" NAME_WE)
add_dependencies(franka_gripper_generate_messages_lisp _franka_gripper_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/brazo/workspace/rafi_ws/devel/share/franka_gripper/msg/HomingResult.msg" NAME_WE)
add_dependencies(franka_gripper_generate_messages_lisp _franka_gripper_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/brazo/workspace/rafi_ws/devel/share/franka_gripper/msg/HomingFeedback.msg" NAME_WE)
add_dependencies(franka_gripper_generate_messages_lisp _franka_gripper_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/brazo/workspace/rafi_ws/devel/share/franka_gripper/msg/StopAction.msg" NAME_WE)
add_dependencies(franka_gripper_generate_messages_lisp _franka_gripper_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/brazo/workspace/rafi_ws/devel/share/franka_gripper/msg/StopActionGoal.msg" NAME_WE)
add_dependencies(franka_gripper_generate_messages_lisp _franka_gripper_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/brazo/workspace/rafi_ws/devel/share/franka_gripper/msg/StopActionResult.msg" NAME_WE)
add_dependencies(franka_gripper_generate_messages_lisp _franka_gripper_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/brazo/workspace/rafi_ws/devel/share/franka_gripper/msg/StopActionFeedback.msg" NAME_WE)
add_dependencies(franka_gripper_generate_messages_lisp _franka_gripper_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/brazo/workspace/rafi_ws/devel/share/franka_gripper/msg/StopGoal.msg" NAME_WE)
add_dependencies(franka_gripper_generate_messages_lisp _franka_gripper_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/brazo/workspace/rafi_ws/devel/share/franka_gripper/msg/StopResult.msg" NAME_WE)
add_dependencies(franka_gripper_generate_messages_lisp _franka_gripper_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/brazo/workspace/rafi_ws/devel/share/franka_gripper/msg/StopFeedback.msg" NAME_WE)
add_dependencies(franka_gripper_generate_messages_lisp _franka_gripper_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/brazo/workspace/rafi_ws/devel/share/franka_gripper/msg/MoveAction.msg" NAME_WE)
add_dependencies(franka_gripper_generate_messages_lisp _franka_gripper_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/brazo/workspace/rafi_ws/devel/share/franka_gripper/msg/MoveActionGoal.msg" NAME_WE)
add_dependencies(franka_gripper_generate_messages_lisp _franka_gripper_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/brazo/workspace/rafi_ws/devel/share/franka_gripper/msg/MoveActionResult.msg" NAME_WE)
add_dependencies(franka_gripper_generate_messages_lisp _franka_gripper_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/brazo/workspace/rafi_ws/devel/share/franka_gripper/msg/MoveActionFeedback.msg" NAME_WE)
add_dependencies(franka_gripper_generate_messages_lisp _franka_gripper_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/brazo/workspace/rafi_ws/devel/share/franka_gripper/msg/MoveGoal.msg" NAME_WE)
add_dependencies(franka_gripper_generate_messages_lisp _franka_gripper_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/brazo/workspace/rafi_ws/devel/share/franka_gripper/msg/MoveResult.msg" NAME_WE)
add_dependencies(franka_gripper_generate_messages_lisp _franka_gripper_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/brazo/workspace/rafi_ws/devel/share/franka_gripper/msg/MoveFeedback.msg" NAME_WE)
add_dependencies(franka_gripper_generate_messages_lisp _franka_gripper_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/brazo/workspace/rafi_ws/src/franka_ros/franka_gripper/msg/GraspEpsilon.msg" NAME_WE)
add_dependencies(franka_gripper_generate_messages_lisp _franka_gripper_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(franka_gripper_genlisp)
add_dependencies(franka_gripper_genlisp franka_gripper_generate_messages_lisp)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS franka_gripper_generate_messages_lisp)

### Section generating for lang: gennodejs
### Generating Messages
_generate_msg_nodejs(franka_gripper
  "/home/brazo/workspace/rafi_ws/devel/share/franka_gripper/msg/GraspAction.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/actionlib_msgs/cmake/../msg/GoalID.msg;/home/brazo/workspace/rafi_ws/devel/share/franka_gripper/msg/GraspActionGoal.msg;/home/brazo/workspace/rafi_ws/devel/share/franka_gripper/msg/GraspActionFeedback.msg;/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg;/home/brazo/workspace/rafi_ws/devel/share/franka_gripper/msg/GraspActionResult.msg;/home/brazo/workspace/rafi_ws/src/franka_ros/franka_gripper/msg/GraspEpsilon.msg;/home/brazo/workspace/rafi_ws/devel/share/franka_gripper/msg/GraspGoal.msg;/home/brazo/workspace/rafi_ws/devel/share/franka_gripper/msg/GraspFeedback.msg;/opt/ros/noetic/share/actionlib_msgs/cmake/../msg/GoalStatus.msg;/home/brazo/workspace/rafi_ws/devel/share/franka_gripper/msg/GraspResult.msg"
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/franka_gripper
)
_generate_msg_nodejs(franka_gripper
  "/home/brazo/workspace/rafi_ws/devel/share/franka_gripper/msg/GraspActionGoal.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/actionlib_msgs/cmake/../msg/GoalID.msg;/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg;/home/brazo/workspace/rafi_ws/src/franka_ros/franka_gripper/msg/GraspEpsilon.msg;/home/brazo/workspace/rafi_ws/devel/share/franka_gripper/msg/GraspGoal.msg"
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/franka_gripper
)
_generate_msg_nodejs(franka_gripper
  "/home/brazo/workspace/rafi_ws/devel/share/franka_gripper/msg/GraspActionResult.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/actionlib_msgs/cmake/../msg/GoalID.msg;/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/noetic/share/actionlib_msgs/cmake/../msg/GoalStatus.msg;/home/brazo/workspace/rafi_ws/devel/share/franka_gripper/msg/GraspResult.msg"
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/franka_gripper
)
_generate_msg_nodejs(franka_gripper
  "/home/brazo/workspace/rafi_ws/devel/share/franka_gripper/msg/GraspActionFeedback.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/actionlib_msgs/cmake/../msg/GoalID.msg;/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/noetic/share/actionlib_msgs/cmake/../msg/GoalStatus.msg;/home/brazo/workspace/rafi_ws/devel/share/franka_gripper/msg/GraspFeedback.msg"
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/franka_gripper
)
_generate_msg_nodejs(franka_gripper
  "/home/brazo/workspace/rafi_ws/devel/share/franka_gripper/msg/GraspGoal.msg"
  "${MSG_I_FLAGS}"
  "/home/brazo/workspace/rafi_ws/src/franka_ros/franka_gripper/msg/GraspEpsilon.msg"
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/franka_gripper
)
_generate_msg_nodejs(franka_gripper
  "/home/brazo/workspace/rafi_ws/devel/share/franka_gripper/msg/GraspResult.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/franka_gripper
)
_generate_msg_nodejs(franka_gripper
  "/home/brazo/workspace/rafi_ws/devel/share/franka_gripper/msg/GraspFeedback.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/franka_gripper
)
_generate_msg_nodejs(franka_gripper
  "/home/brazo/workspace/rafi_ws/devel/share/franka_gripper/msg/HomingAction.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/actionlib_msgs/cmake/../msg/GoalID.msg;/home/brazo/workspace/rafi_ws/devel/share/franka_gripper/msg/HomingActionGoal.msg;/home/brazo/workspace/rafi_ws/devel/share/franka_gripper/msg/HomingGoal.msg;/home/brazo/workspace/rafi_ws/devel/share/franka_gripper/msg/HomingResult.msg;/home/brazo/workspace/rafi_ws/devel/share/franka_gripper/msg/HomingActionFeedback.msg;/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg;/home/brazo/workspace/rafi_ws/devel/share/franka_gripper/msg/HomingFeedback.msg;/opt/ros/noetic/share/actionlib_msgs/cmake/../msg/GoalStatus.msg;/home/brazo/workspace/rafi_ws/devel/share/franka_gripper/msg/HomingActionResult.msg"
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/franka_gripper
)
_generate_msg_nodejs(franka_gripper
  "/home/brazo/workspace/rafi_ws/devel/share/franka_gripper/msg/HomingActionGoal.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/actionlib_msgs/cmake/../msg/GoalID.msg;/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg;/home/brazo/workspace/rafi_ws/devel/share/franka_gripper/msg/HomingGoal.msg"
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/franka_gripper
)
_generate_msg_nodejs(franka_gripper
  "/home/brazo/workspace/rafi_ws/devel/share/franka_gripper/msg/HomingActionResult.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/actionlib_msgs/cmake/../msg/GoalID.msg;/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg;/home/brazo/workspace/rafi_ws/devel/share/franka_gripper/msg/HomingResult.msg;/opt/ros/noetic/share/actionlib_msgs/cmake/../msg/GoalStatus.msg"
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/franka_gripper
)
_generate_msg_nodejs(franka_gripper
  "/home/brazo/workspace/rafi_ws/devel/share/franka_gripper/msg/HomingActionFeedback.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/actionlib_msgs/cmake/../msg/GoalID.msg;/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg;/home/brazo/workspace/rafi_ws/devel/share/franka_gripper/msg/HomingFeedback.msg;/opt/ros/noetic/share/actionlib_msgs/cmake/../msg/GoalStatus.msg"
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/franka_gripper
)
_generate_msg_nodejs(franka_gripper
  "/home/brazo/workspace/rafi_ws/devel/share/franka_gripper/msg/HomingGoal.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/franka_gripper
)
_generate_msg_nodejs(franka_gripper
  "/home/brazo/workspace/rafi_ws/devel/share/franka_gripper/msg/HomingResult.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/franka_gripper
)
_generate_msg_nodejs(franka_gripper
  "/home/brazo/workspace/rafi_ws/devel/share/franka_gripper/msg/HomingFeedback.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/franka_gripper
)
_generate_msg_nodejs(franka_gripper
  "/home/brazo/workspace/rafi_ws/devel/share/franka_gripper/msg/StopAction.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/actionlib_msgs/cmake/../msg/GoalID.msg;/home/brazo/workspace/rafi_ws/devel/share/franka_gripper/msg/StopActionResult.msg;/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg;/home/brazo/workspace/rafi_ws/devel/share/franka_gripper/msg/StopFeedback.msg;/home/brazo/workspace/rafi_ws/devel/share/franka_gripper/msg/StopActionGoal.msg;/home/brazo/workspace/rafi_ws/devel/share/franka_gripper/msg/StopGoal.msg;/opt/ros/noetic/share/actionlib_msgs/cmake/../msg/GoalStatus.msg;/home/brazo/workspace/rafi_ws/devel/share/franka_gripper/msg/StopActionFeedback.msg;/home/brazo/workspace/rafi_ws/devel/share/franka_gripper/msg/StopResult.msg"
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/franka_gripper
)
_generate_msg_nodejs(franka_gripper
  "/home/brazo/workspace/rafi_ws/devel/share/franka_gripper/msg/StopActionGoal.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/actionlib_msgs/cmake/../msg/GoalID.msg;/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg;/home/brazo/workspace/rafi_ws/devel/share/franka_gripper/msg/StopGoal.msg"
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/franka_gripper
)
_generate_msg_nodejs(franka_gripper
  "/home/brazo/workspace/rafi_ws/devel/share/franka_gripper/msg/StopActionResult.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/actionlib_msgs/cmake/../msg/GoalID.msg;/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/noetic/share/actionlib_msgs/cmake/../msg/GoalStatus.msg;/home/brazo/workspace/rafi_ws/devel/share/franka_gripper/msg/StopResult.msg"
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/franka_gripper
)
_generate_msg_nodejs(franka_gripper
  "/home/brazo/workspace/rafi_ws/devel/share/franka_gripper/msg/StopActionFeedback.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/actionlib_msgs/cmake/../msg/GoalID.msg;/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg;/home/brazo/workspace/rafi_ws/devel/share/franka_gripper/msg/StopFeedback.msg;/opt/ros/noetic/share/actionlib_msgs/cmake/../msg/GoalStatus.msg"
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/franka_gripper
)
_generate_msg_nodejs(franka_gripper
  "/home/brazo/workspace/rafi_ws/devel/share/franka_gripper/msg/StopGoal.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/franka_gripper
)
_generate_msg_nodejs(franka_gripper
  "/home/brazo/workspace/rafi_ws/devel/share/franka_gripper/msg/StopResult.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/franka_gripper
)
_generate_msg_nodejs(franka_gripper
  "/home/brazo/workspace/rafi_ws/devel/share/franka_gripper/msg/StopFeedback.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/franka_gripper
)
_generate_msg_nodejs(franka_gripper
  "/home/brazo/workspace/rafi_ws/devel/share/franka_gripper/msg/MoveAction.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/actionlib_msgs/cmake/../msg/GoalID.msg;/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg;/home/brazo/workspace/rafi_ws/devel/share/franka_gripper/msg/MoveActionFeedback.msg;/home/brazo/workspace/rafi_ws/devel/share/franka_gripper/msg/MoveResult.msg;/home/brazo/workspace/rafi_ws/devel/share/franka_gripper/msg/MoveGoal.msg;/home/brazo/workspace/rafi_ws/devel/share/franka_gripper/msg/MoveFeedback.msg;/opt/ros/noetic/share/actionlib_msgs/cmake/../msg/GoalStatus.msg;/home/brazo/workspace/rafi_ws/devel/share/franka_gripper/msg/MoveActionGoal.msg;/home/brazo/workspace/rafi_ws/devel/share/franka_gripper/msg/MoveActionResult.msg"
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/franka_gripper
)
_generate_msg_nodejs(franka_gripper
  "/home/brazo/workspace/rafi_ws/devel/share/franka_gripper/msg/MoveActionGoal.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/actionlib_msgs/cmake/../msg/GoalID.msg;/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg;/home/brazo/workspace/rafi_ws/devel/share/franka_gripper/msg/MoveGoal.msg"
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/franka_gripper
)
_generate_msg_nodejs(franka_gripper
  "/home/brazo/workspace/rafi_ws/devel/share/franka_gripper/msg/MoveActionResult.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/actionlib_msgs/cmake/../msg/GoalID.msg;/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/noetic/share/actionlib_msgs/cmake/../msg/GoalStatus.msg;/home/brazo/workspace/rafi_ws/devel/share/franka_gripper/msg/MoveResult.msg"
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/franka_gripper
)
_generate_msg_nodejs(franka_gripper
  "/home/brazo/workspace/rafi_ws/devel/share/franka_gripper/msg/MoveActionFeedback.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/actionlib_msgs/cmake/../msg/GoalID.msg;/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/noetic/share/actionlib_msgs/cmake/../msg/GoalStatus.msg;/home/brazo/workspace/rafi_ws/devel/share/franka_gripper/msg/MoveFeedback.msg"
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/franka_gripper
)
_generate_msg_nodejs(franka_gripper
  "/home/brazo/workspace/rafi_ws/devel/share/franka_gripper/msg/MoveGoal.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/franka_gripper
)
_generate_msg_nodejs(franka_gripper
  "/home/brazo/workspace/rafi_ws/devel/share/franka_gripper/msg/MoveResult.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/franka_gripper
)
_generate_msg_nodejs(franka_gripper
  "/home/brazo/workspace/rafi_ws/devel/share/franka_gripper/msg/MoveFeedback.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/franka_gripper
)
_generate_msg_nodejs(franka_gripper
  "/home/brazo/workspace/rafi_ws/src/franka_ros/franka_gripper/msg/GraspEpsilon.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/franka_gripper
)

### Generating Services

### Generating Module File
_generate_module_nodejs(franka_gripper
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/franka_gripper
  "${ALL_GEN_OUTPUT_FILES_nodejs}"
)

add_custom_target(franka_gripper_generate_messages_nodejs
  DEPENDS ${ALL_GEN_OUTPUT_FILES_nodejs}
)
add_dependencies(franka_gripper_generate_messages franka_gripper_generate_messages_nodejs)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/brazo/workspace/rafi_ws/devel/share/franka_gripper/msg/GraspAction.msg" NAME_WE)
add_dependencies(franka_gripper_generate_messages_nodejs _franka_gripper_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/brazo/workspace/rafi_ws/devel/share/franka_gripper/msg/GraspActionGoal.msg" NAME_WE)
add_dependencies(franka_gripper_generate_messages_nodejs _franka_gripper_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/brazo/workspace/rafi_ws/devel/share/franka_gripper/msg/GraspActionResult.msg" NAME_WE)
add_dependencies(franka_gripper_generate_messages_nodejs _franka_gripper_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/brazo/workspace/rafi_ws/devel/share/franka_gripper/msg/GraspActionFeedback.msg" NAME_WE)
add_dependencies(franka_gripper_generate_messages_nodejs _franka_gripper_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/brazo/workspace/rafi_ws/devel/share/franka_gripper/msg/GraspGoal.msg" NAME_WE)
add_dependencies(franka_gripper_generate_messages_nodejs _franka_gripper_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/brazo/workspace/rafi_ws/devel/share/franka_gripper/msg/GraspResult.msg" NAME_WE)
add_dependencies(franka_gripper_generate_messages_nodejs _franka_gripper_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/brazo/workspace/rafi_ws/devel/share/franka_gripper/msg/GraspFeedback.msg" NAME_WE)
add_dependencies(franka_gripper_generate_messages_nodejs _franka_gripper_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/brazo/workspace/rafi_ws/devel/share/franka_gripper/msg/HomingAction.msg" NAME_WE)
add_dependencies(franka_gripper_generate_messages_nodejs _franka_gripper_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/brazo/workspace/rafi_ws/devel/share/franka_gripper/msg/HomingActionGoal.msg" NAME_WE)
add_dependencies(franka_gripper_generate_messages_nodejs _franka_gripper_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/brazo/workspace/rafi_ws/devel/share/franka_gripper/msg/HomingActionResult.msg" NAME_WE)
add_dependencies(franka_gripper_generate_messages_nodejs _franka_gripper_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/brazo/workspace/rafi_ws/devel/share/franka_gripper/msg/HomingActionFeedback.msg" NAME_WE)
add_dependencies(franka_gripper_generate_messages_nodejs _franka_gripper_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/brazo/workspace/rafi_ws/devel/share/franka_gripper/msg/HomingGoal.msg" NAME_WE)
add_dependencies(franka_gripper_generate_messages_nodejs _franka_gripper_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/brazo/workspace/rafi_ws/devel/share/franka_gripper/msg/HomingResult.msg" NAME_WE)
add_dependencies(franka_gripper_generate_messages_nodejs _franka_gripper_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/brazo/workspace/rafi_ws/devel/share/franka_gripper/msg/HomingFeedback.msg" NAME_WE)
add_dependencies(franka_gripper_generate_messages_nodejs _franka_gripper_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/brazo/workspace/rafi_ws/devel/share/franka_gripper/msg/StopAction.msg" NAME_WE)
add_dependencies(franka_gripper_generate_messages_nodejs _franka_gripper_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/brazo/workspace/rafi_ws/devel/share/franka_gripper/msg/StopActionGoal.msg" NAME_WE)
add_dependencies(franka_gripper_generate_messages_nodejs _franka_gripper_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/brazo/workspace/rafi_ws/devel/share/franka_gripper/msg/StopActionResult.msg" NAME_WE)
add_dependencies(franka_gripper_generate_messages_nodejs _franka_gripper_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/brazo/workspace/rafi_ws/devel/share/franka_gripper/msg/StopActionFeedback.msg" NAME_WE)
add_dependencies(franka_gripper_generate_messages_nodejs _franka_gripper_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/brazo/workspace/rafi_ws/devel/share/franka_gripper/msg/StopGoal.msg" NAME_WE)
add_dependencies(franka_gripper_generate_messages_nodejs _franka_gripper_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/brazo/workspace/rafi_ws/devel/share/franka_gripper/msg/StopResult.msg" NAME_WE)
add_dependencies(franka_gripper_generate_messages_nodejs _franka_gripper_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/brazo/workspace/rafi_ws/devel/share/franka_gripper/msg/StopFeedback.msg" NAME_WE)
add_dependencies(franka_gripper_generate_messages_nodejs _franka_gripper_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/brazo/workspace/rafi_ws/devel/share/franka_gripper/msg/MoveAction.msg" NAME_WE)
add_dependencies(franka_gripper_generate_messages_nodejs _franka_gripper_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/brazo/workspace/rafi_ws/devel/share/franka_gripper/msg/MoveActionGoal.msg" NAME_WE)
add_dependencies(franka_gripper_generate_messages_nodejs _franka_gripper_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/brazo/workspace/rafi_ws/devel/share/franka_gripper/msg/MoveActionResult.msg" NAME_WE)
add_dependencies(franka_gripper_generate_messages_nodejs _franka_gripper_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/brazo/workspace/rafi_ws/devel/share/franka_gripper/msg/MoveActionFeedback.msg" NAME_WE)
add_dependencies(franka_gripper_generate_messages_nodejs _franka_gripper_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/brazo/workspace/rafi_ws/devel/share/franka_gripper/msg/MoveGoal.msg" NAME_WE)
add_dependencies(franka_gripper_generate_messages_nodejs _franka_gripper_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/brazo/workspace/rafi_ws/devel/share/franka_gripper/msg/MoveResult.msg" NAME_WE)
add_dependencies(franka_gripper_generate_messages_nodejs _franka_gripper_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/brazo/workspace/rafi_ws/devel/share/franka_gripper/msg/MoveFeedback.msg" NAME_WE)
add_dependencies(franka_gripper_generate_messages_nodejs _franka_gripper_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/brazo/workspace/rafi_ws/src/franka_ros/franka_gripper/msg/GraspEpsilon.msg" NAME_WE)
add_dependencies(franka_gripper_generate_messages_nodejs _franka_gripper_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(franka_gripper_gennodejs)
add_dependencies(franka_gripper_gennodejs franka_gripper_generate_messages_nodejs)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS franka_gripper_generate_messages_nodejs)

### Section generating for lang: genpy
### Generating Messages
_generate_msg_py(franka_gripper
  "/home/brazo/workspace/rafi_ws/devel/share/franka_gripper/msg/GraspAction.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/actionlib_msgs/cmake/../msg/GoalID.msg;/home/brazo/workspace/rafi_ws/devel/share/franka_gripper/msg/GraspActionGoal.msg;/home/brazo/workspace/rafi_ws/devel/share/franka_gripper/msg/GraspActionFeedback.msg;/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg;/home/brazo/workspace/rafi_ws/devel/share/franka_gripper/msg/GraspActionResult.msg;/home/brazo/workspace/rafi_ws/src/franka_ros/franka_gripper/msg/GraspEpsilon.msg;/home/brazo/workspace/rafi_ws/devel/share/franka_gripper/msg/GraspGoal.msg;/home/brazo/workspace/rafi_ws/devel/share/franka_gripper/msg/GraspFeedback.msg;/opt/ros/noetic/share/actionlib_msgs/cmake/../msg/GoalStatus.msg;/home/brazo/workspace/rafi_ws/devel/share/franka_gripper/msg/GraspResult.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/franka_gripper
)
_generate_msg_py(franka_gripper
  "/home/brazo/workspace/rafi_ws/devel/share/franka_gripper/msg/GraspActionGoal.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/actionlib_msgs/cmake/../msg/GoalID.msg;/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg;/home/brazo/workspace/rafi_ws/src/franka_ros/franka_gripper/msg/GraspEpsilon.msg;/home/brazo/workspace/rafi_ws/devel/share/franka_gripper/msg/GraspGoal.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/franka_gripper
)
_generate_msg_py(franka_gripper
  "/home/brazo/workspace/rafi_ws/devel/share/franka_gripper/msg/GraspActionResult.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/actionlib_msgs/cmake/../msg/GoalID.msg;/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/noetic/share/actionlib_msgs/cmake/../msg/GoalStatus.msg;/home/brazo/workspace/rafi_ws/devel/share/franka_gripper/msg/GraspResult.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/franka_gripper
)
_generate_msg_py(franka_gripper
  "/home/brazo/workspace/rafi_ws/devel/share/franka_gripper/msg/GraspActionFeedback.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/actionlib_msgs/cmake/../msg/GoalID.msg;/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/noetic/share/actionlib_msgs/cmake/../msg/GoalStatus.msg;/home/brazo/workspace/rafi_ws/devel/share/franka_gripper/msg/GraspFeedback.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/franka_gripper
)
_generate_msg_py(franka_gripper
  "/home/brazo/workspace/rafi_ws/devel/share/franka_gripper/msg/GraspGoal.msg"
  "${MSG_I_FLAGS}"
  "/home/brazo/workspace/rafi_ws/src/franka_ros/franka_gripper/msg/GraspEpsilon.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/franka_gripper
)
_generate_msg_py(franka_gripper
  "/home/brazo/workspace/rafi_ws/devel/share/franka_gripper/msg/GraspResult.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/franka_gripper
)
_generate_msg_py(franka_gripper
  "/home/brazo/workspace/rafi_ws/devel/share/franka_gripper/msg/GraspFeedback.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/franka_gripper
)
_generate_msg_py(franka_gripper
  "/home/brazo/workspace/rafi_ws/devel/share/franka_gripper/msg/HomingAction.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/actionlib_msgs/cmake/../msg/GoalID.msg;/home/brazo/workspace/rafi_ws/devel/share/franka_gripper/msg/HomingActionGoal.msg;/home/brazo/workspace/rafi_ws/devel/share/franka_gripper/msg/HomingGoal.msg;/home/brazo/workspace/rafi_ws/devel/share/franka_gripper/msg/HomingResult.msg;/home/brazo/workspace/rafi_ws/devel/share/franka_gripper/msg/HomingActionFeedback.msg;/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg;/home/brazo/workspace/rafi_ws/devel/share/franka_gripper/msg/HomingFeedback.msg;/opt/ros/noetic/share/actionlib_msgs/cmake/../msg/GoalStatus.msg;/home/brazo/workspace/rafi_ws/devel/share/franka_gripper/msg/HomingActionResult.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/franka_gripper
)
_generate_msg_py(franka_gripper
  "/home/brazo/workspace/rafi_ws/devel/share/franka_gripper/msg/HomingActionGoal.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/actionlib_msgs/cmake/../msg/GoalID.msg;/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg;/home/brazo/workspace/rafi_ws/devel/share/franka_gripper/msg/HomingGoal.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/franka_gripper
)
_generate_msg_py(franka_gripper
  "/home/brazo/workspace/rafi_ws/devel/share/franka_gripper/msg/HomingActionResult.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/actionlib_msgs/cmake/../msg/GoalID.msg;/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg;/home/brazo/workspace/rafi_ws/devel/share/franka_gripper/msg/HomingResult.msg;/opt/ros/noetic/share/actionlib_msgs/cmake/../msg/GoalStatus.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/franka_gripper
)
_generate_msg_py(franka_gripper
  "/home/brazo/workspace/rafi_ws/devel/share/franka_gripper/msg/HomingActionFeedback.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/actionlib_msgs/cmake/../msg/GoalID.msg;/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg;/home/brazo/workspace/rafi_ws/devel/share/franka_gripper/msg/HomingFeedback.msg;/opt/ros/noetic/share/actionlib_msgs/cmake/../msg/GoalStatus.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/franka_gripper
)
_generate_msg_py(franka_gripper
  "/home/brazo/workspace/rafi_ws/devel/share/franka_gripper/msg/HomingGoal.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/franka_gripper
)
_generate_msg_py(franka_gripper
  "/home/brazo/workspace/rafi_ws/devel/share/franka_gripper/msg/HomingResult.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/franka_gripper
)
_generate_msg_py(franka_gripper
  "/home/brazo/workspace/rafi_ws/devel/share/franka_gripper/msg/HomingFeedback.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/franka_gripper
)
_generate_msg_py(franka_gripper
  "/home/brazo/workspace/rafi_ws/devel/share/franka_gripper/msg/StopAction.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/actionlib_msgs/cmake/../msg/GoalID.msg;/home/brazo/workspace/rafi_ws/devel/share/franka_gripper/msg/StopActionResult.msg;/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg;/home/brazo/workspace/rafi_ws/devel/share/franka_gripper/msg/StopFeedback.msg;/home/brazo/workspace/rafi_ws/devel/share/franka_gripper/msg/StopActionGoal.msg;/home/brazo/workspace/rafi_ws/devel/share/franka_gripper/msg/StopGoal.msg;/opt/ros/noetic/share/actionlib_msgs/cmake/../msg/GoalStatus.msg;/home/brazo/workspace/rafi_ws/devel/share/franka_gripper/msg/StopActionFeedback.msg;/home/brazo/workspace/rafi_ws/devel/share/franka_gripper/msg/StopResult.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/franka_gripper
)
_generate_msg_py(franka_gripper
  "/home/brazo/workspace/rafi_ws/devel/share/franka_gripper/msg/StopActionGoal.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/actionlib_msgs/cmake/../msg/GoalID.msg;/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg;/home/brazo/workspace/rafi_ws/devel/share/franka_gripper/msg/StopGoal.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/franka_gripper
)
_generate_msg_py(franka_gripper
  "/home/brazo/workspace/rafi_ws/devel/share/franka_gripper/msg/StopActionResult.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/actionlib_msgs/cmake/../msg/GoalID.msg;/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/noetic/share/actionlib_msgs/cmake/../msg/GoalStatus.msg;/home/brazo/workspace/rafi_ws/devel/share/franka_gripper/msg/StopResult.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/franka_gripper
)
_generate_msg_py(franka_gripper
  "/home/brazo/workspace/rafi_ws/devel/share/franka_gripper/msg/StopActionFeedback.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/actionlib_msgs/cmake/../msg/GoalID.msg;/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg;/home/brazo/workspace/rafi_ws/devel/share/franka_gripper/msg/StopFeedback.msg;/opt/ros/noetic/share/actionlib_msgs/cmake/../msg/GoalStatus.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/franka_gripper
)
_generate_msg_py(franka_gripper
  "/home/brazo/workspace/rafi_ws/devel/share/franka_gripper/msg/StopGoal.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/franka_gripper
)
_generate_msg_py(franka_gripper
  "/home/brazo/workspace/rafi_ws/devel/share/franka_gripper/msg/StopResult.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/franka_gripper
)
_generate_msg_py(franka_gripper
  "/home/brazo/workspace/rafi_ws/devel/share/franka_gripper/msg/StopFeedback.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/franka_gripper
)
_generate_msg_py(franka_gripper
  "/home/brazo/workspace/rafi_ws/devel/share/franka_gripper/msg/MoveAction.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/actionlib_msgs/cmake/../msg/GoalID.msg;/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg;/home/brazo/workspace/rafi_ws/devel/share/franka_gripper/msg/MoveActionFeedback.msg;/home/brazo/workspace/rafi_ws/devel/share/franka_gripper/msg/MoveResult.msg;/home/brazo/workspace/rafi_ws/devel/share/franka_gripper/msg/MoveGoal.msg;/home/brazo/workspace/rafi_ws/devel/share/franka_gripper/msg/MoveFeedback.msg;/opt/ros/noetic/share/actionlib_msgs/cmake/../msg/GoalStatus.msg;/home/brazo/workspace/rafi_ws/devel/share/franka_gripper/msg/MoveActionGoal.msg;/home/brazo/workspace/rafi_ws/devel/share/franka_gripper/msg/MoveActionResult.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/franka_gripper
)
_generate_msg_py(franka_gripper
  "/home/brazo/workspace/rafi_ws/devel/share/franka_gripper/msg/MoveActionGoal.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/actionlib_msgs/cmake/../msg/GoalID.msg;/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg;/home/brazo/workspace/rafi_ws/devel/share/franka_gripper/msg/MoveGoal.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/franka_gripper
)
_generate_msg_py(franka_gripper
  "/home/brazo/workspace/rafi_ws/devel/share/franka_gripper/msg/MoveActionResult.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/actionlib_msgs/cmake/../msg/GoalID.msg;/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/noetic/share/actionlib_msgs/cmake/../msg/GoalStatus.msg;/home/brazo/workspace/rafi_ws/devel/share/franka_gripper/msg/MoveResult.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/franka_gripper
)
_generate_msg_py(franka_gripper
  "/home/brazo/workspace/rafi_ws/devel/share/franka_gripper/msg/MoveActionFeedback.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/actionlib_msgs/cmake/../msg/GoalID.msg;/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/noetic/share/actionlib_msgs/cmake/../msg/GoalStatus.msg;/home/brazo/workspace/rafi_ws/devel/share/franka_gripper/msg/MoveFeedback.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/franka_gripper
)
_generate_msg_py(franka_gripper
  "/home/brazo/workspace/rafi_ws/devel/share/franka_gripper/msg/MoveGoal.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/franka_gripper
)
_generate_msg_py(franka_gripper
  "/home/brazo/workspace/rafi_ws/devel/share/franka_gripper/msg/MoveResult.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/franka_gripper
)
_generate_msg_py(franka_gripper
  "/home/brazo/workspace/rafi_ws/devel/share/franka_gripper/msg/MoveFeedback.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/franka_gripper
)
_generate_msg_py(franka_gripper
  "/home/brazo/workspace/rafi_ws/src/franka_ros/franka_gripper/msg/GraspEpsilon.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/franka_gripper
)

### Generating Services

### Generating Module File
_generate_module_py(franka_gripper
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/franka_gripper
  "${ALL_GEN_OUTPUT_FILES_py}"
)

add_custom_target(franka_gripper_generate_messages_py
  DEPENDS ${ALL_GEN_OUTPUT_FILES_py}
)
add_dependencies(franka_gripper_generate_messages franka_gripper_generate_messages_py)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/brazo/workspace/rafi_ws/devel/share/franka_gripper/msg/GraspAction.msg" NAME_WE)
add_dependencies(franka_gripper_generate_messages_py _franka_gripper_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/brazo/workspace/rafi_ws/devel/share/franka_gripper/msg/GraspActionGoal.msg" NAME_WE)
add_dependencies(franka_gripper_generate_messages_py _franka_gripper_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/brazo/workspace/rafi_ws/devel/share/franka_gripper/msg/GraspActionResult.msg" NAME_WE)
add_dependencies(franka_gripper_generate_messages_py _franka_gripper_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/brazo/workspace/rafi_ws/devel/share/franka_gripper/msg/GraspActionFeedback.msg" NAME_WE)
add_dependencies(franka_gripper_generate_messages_py _franka_gripper_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/brazo/workspace/rafi_ws/devel/share/franka_gripper/msg/GraspGoal.msg" NAME_WE)
add_dependencies(franka_gripper_generate_messages_py _franka_gripper_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/brazo/workspace/rafi_ws/devel/share/franka_gripper/msg/GraspResult.msg" NAME_WE)
add_dependencies(franka_gripper_generate_messages_py _franka_gripper_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/brazo/workspace/rafi_ws/devel/share/franka_gripper/msg/GraspFeedback.msg" NAME_WE)
add_dependencies(franka_gripper_generate_messages_py _franka_gripper_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/brazo/workspace/rafi_ws/devel/share/franka_gripper/msg/HomingAction.msg" NAME_WE)
add_dependencies(franka_gripper_generate_messages_py _franka_gripper_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/brazo/workspace/rafi_ws/devel/share/franka_gripper/msg/HomingActionGoal.msg" NAME_WE)
add_dependencies(franka_gripper_generate_messages_py _franka_gripper_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/brazo/workspace/rafi_ws/devel/share/franka_gripper/msg/HomingActionResult.msg" NAME_WE)
add_dependencies(franka_gripper_generate_messages_py _franka_gripper_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/brazo/workspace/rafi_ws/devel/share/franka_gripper/msg/HomingActionFeedback.msg" NAME_WE)
add_dependencies(franka_gripper_generate_messages_py _franka_gripper_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/brazo/workspace/rafi_ws/devel/share/franka_gripper/msg/HomingGoal.msg" NAME_WE)
add_dependencies(franka_gripper_generate_messages_py _franka_gripper_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/brazo/workspace/rafi_ws/devel/share/franka_gripper/msg/HomingResult.msg" NAME_WE)
add_dependencies(franka_gripper_generate_messages_py _franka_gripper_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/brazo/workspace/rafi_ws/devel/share/franka_gripper/msg/HomingFeedback.msg" NAME_WE)
add_dependencies(franka_gripper_generate_messages_py _franka_gripper_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/brazo/workspace/rafi_ws/devel/share/franka_gripper/msg/StopAction.msg" NAME_WE)
add_dependencies(franka_gripper_generate_messages_py _franka_gripper_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/brazo/workspace/rafi_ws/devel/share/franka_gripper/msg/StopActionGoal.msg" NAME_WE)
add_dependencies(franka_gripper_generate_messages_py _franka_gripper_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/brazo/workspace/rafi_ws/devel/share/franka_gripper/msg/StopActionResult.msg" NAME_WE)
add_dependencies(franka_gripper_generate_messages_py _franka_gripper_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/brazo/workspace/rafi_ws/devel/share/franka_gripper/msg/StopActionFeedback.msg" NAME_WE)
add_dependencies(franka_gripper_generate_messages_py _franka_gripper_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/brazo/workspace/rafi_ws/devel/share/franka_gripper/msg/StopGoal.msg" NAME_WE)
add_dependencies(franka_gripper_generate_messages_py _franka_gripper_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/brazo/workspace/rafi_ws/devel/share/franka_gripper/msg/StopResult.msg" NAME_WE)
add_dependencies(franka_gripper_generate_messages_py _franka_gripper_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/brazo/workspace/rafi_ws/devel/share/franka_gripper/msg/StopFeedback.msg" NAME_WE)
add_dependencies(franka_gripper_generate_messages_py _franka_gripper_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/brazo/workspace/rafi_ws/devel/share/franka_gripper/msg/MoveAction.msg" NAME_WE)
add_dependencies(franka_gripper_generate_messages_py _franka_gripper_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/brazo/workspace/rafi_ws/devel/share/franka_gripper/msg/MoveActionGoal.msg" NAME_WE)
add_dependencies(franka_gripper_generate_messages_py _franka_gripper_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/brazo/workspace/rafi_ws/devel/share/franka_gripper/msg/MoveActionResult.msg" NAME_WE)
add_dependencies(franka_gripper_generate_messages_py _franka_gripper_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/brazo/workspace/rafi_ws/devel/share/franka_gripper/msg/MoveActionFeedback.msg" NAME_WE)
add_dependencies(franka_gripper_generate_messages_py _franka_gripper_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/brazo/workspace/rafi_ws/devel/share/franka_gripper/msg/MoveGoal.msg" NAME_WE)
add_dependencies(franka_gripper_generate_messages_py _franka_gripper_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/brazo/workspace/rafi_ws/devel/share/franka_gripper/msg/MoveResult.msg" NAME_WE)
add_dependencies(franka_gripper_generate_messages_py _franka_gripper_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/brazo/workspace/rafi_ws/devel/share/franka_gripper/msg/MoveFeedback.msg" NAME_WE)
add_dependencies(franka_gripper_generate_messages_py _franka_gripper_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/brazo/workspace/rafi_ws/src/franka_ros/franka_gripper/msg/GraspEpsilon.msg" NAME_WE)
add_dependencies(franka_gripper_generate_messages_py _franka_gripper_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(franka_gripper_genpy)
add_dependencies(franka_gripper_genpy franka_gripper_generate_messages_py)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS franka_gripper_generate_messages_py)



if(gencpp_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/franka_gripper)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/franka_gripper
    DESTINATION ${gencpp_INSTALL_DIR}
  )
endif()
if(TARGET actionlib_msgs_generate_messages_cpp)
  add_dependencies(franka_gripper_generate_messages_cpp actionlib_msgs_generate_messages_cpp)
endif()

if(geneus_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/franka_gripper)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/franka_gripper
    DESTINATION ${geneus_INSTALL_DIR}
  )
endif()
if(TARGET actionlib_msgs_generate_messages_eus)
  add_dependencies(franka_gripper_generate_messages_eus actionlib_msgs_generate_messages_eus)
endif()

if(genlisp_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/franka_gripper)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/franka_gripper
    DESTINATION ${genlisp_INSTALL_DIR}
  )
endif()
if(TARGET actionlib_msgs_generate_messages_lisp)
  add_dependencies(franka_gripper_generate_messages_lisp actionlib_msgs_generate_messages_lisp)
endif()

if(gennodejs_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/franka_gripper)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/franka_gripper
    DESTINATION ${gennodejs_INSTALL_DIR}
  )
endif()
if(TARGET actionlib_msgs_generate_messages_nodejs)
  add_dependencies(franka_gripper_generate_messages_nodejs actionlib_msgs_generate_messages_nodejs)
endif()

if(genpy_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/franka_gripper)
  install(CODE "execute_process(COMMAND \"/usr/bin/python3\" -m compileall \"${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/franka_gripper\")")
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/franka_gripper
    DESTINATION ${genpy_INSTALL_DIR}
  )
endif()
if(TARGET actionlib_msgs_generate_messages_py)
  add_dependencies(franka_gripper_generate_messages_py actionlib_msgs_generate_messages_py)
endif()
