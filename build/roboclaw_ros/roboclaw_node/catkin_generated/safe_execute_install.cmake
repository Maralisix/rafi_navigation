execute_process(COMMAND "/home/brazo/workspace/rafi_ws/build/roboclaw_ros/roboclaw_node/catkin_generated/python_distutils_install.sh" RESULT_VARIABLE res)

if(NOT res EQUAL 0)
  message(FATAL_ERROR "execute_process(/home/brazo/workspace/rafi_ws/build/roboclaw_ros/roboclaw_node/catkin_generated/python_distutils_install.sh) returned error code ")
endif()
