# Install script for directory: /home/tokunoshoshi/ros_ws/hma_ws/src/crane_x7_ros/crane_x7_examples

# Set the install prefix
if(NOT DEFINED CMAKE_INSTALL_PREFIX)
  set(CMAKE_INSTALL_PREFIX "/home/tokunoshoshi/ros_ws/hma_ws/install")
endif()
string(REGEX REPLACE "/$" "" CMAKE_INSTALL_PREFIX "${CMAKE_INSTALL_PREFIX}")

# Set the install configuration name.
if(NOT DEFINED CMAKE_INSTALL_CONFIG_NAME)
  if(BUILD_TYPE)
    string(REGEX REPLACE "^[^A-Za-z0-9_]+" ""
           CMAKE_INSTALL_CONFIG_NAME "${BUILD_TYPE}")
  else()
    set(CMAKE_INSTALL_CONFIG_NAME "")
  endif()
  message(STATUS "Install configuration: \"${CMAKE_INSTALL_CONFIG_NAME}\"")
endif()

# Set the component getting installed.
if(NOT CMAKE_INSTALL_COMPONENT)
  if(COMPONENT)
    message(STATUS "Install component: \"${COMPONENT}\"")
    set(CMAKE_INSTALL_COMPONENT "${COMPONENT}")
  else()
    set(CMAKE_INSTALL_COMPONENT)
  endif()
endif()

# Install shared libraries without execute permission?
if(NOT DEFINED CMAKE_INSTALL_SO_NO_EXE)
  set(CMAKE_INSTALL_SO_NO_EXE "1")
endif()

if(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/crane_x7_examples/srv" TYPE FILE FILES "/home/tokunoshoshi/ros_ws/hma_ws/src/crane_x7_ros/crane_x7_examples/srv/ObstacleAvoidance.srv")
endif()

if(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/crane_x7_examples/cmake" TYPE FILE FILES "/home/tokunoshoshi/ros_ws/hma_ws/build/crane_x7_ros/crane_x7_examples/catkin_generated/installspace/crane_x7_examples-msg-paths.cmake")
endif()

if(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include" TYPE DIRECTORY FILES "/home/tokunoshoshi/ros_ws/hma_ws/devel/include/crane_x7_examples")
endif()

if(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/roseus/ros" TYPE DIRECTORY FILES "/home/tokunoshoshi/ros_ws/hma_ws/devel/share/roseus/ros/crane_x7_examples")
endif()

if(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/common-lisp/ros" TYPE DIRECTORY FILES "/home/tokunoshoshi/ros_ws/hma_ws/devel/share/common-lisp/ros/crane_x7_examples")
endif()

if(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/gennodejs/ros" TYPE DIRECTORY FILES "/home/tokunoshoshi/ros_ws/hma_ws/devel/share/gennodejs/ros/crane_x7_examples")
endif()

if(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  execute_process(COMMAND "/usr/bin/python" -m compileall "/home/tokunoshoshi/ros_ws/hma_ws/devel/lib/python2.7/dist-packages/crane_x7_examples")
endif()

if(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/python2.7/dist-packages" TYPE DIRECTORY FILES "/home/tokunoshoshi/ros_ws/hma_ws/devel/lib/python2.7/dist-packages/crane_x7_examples")
endif()

if(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/pkgconfig" TYPE FILE FILES "/home/tokunoshoshi/ros_ws/hma_ws/build/crane_x7_ros/crane_x7_examples/catkin_generated/installspace/crane_x7_examples.pc")
endif()

if(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/crane_x7_examples/cmake" TYPE FILE FILES "/home/tokunoshoshi/ros_ws/hma_ws/build/crane_x7_ros/crane_x7_examples/catkin_generated/installspace/crane_x7_examples-msg-extras.cmake")
endif()

if(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/crane_x7_examples/cmake" TYPE FILE FILES
    "/home/tokunoshoshi/ros_ws/hma_ws/build/crane_x7_ros/crane_x7_examples/catkin_generated/installspace/crane_x7_examplesConfig.cmake"
    "/home/tokunoshoshi/ros_ws/hma_ws/build/crane_x7_ros/crane_x7_examples/catkin_generated/installspace/crane_x7_examplesConfig-version.cmake"
    )
endif()

if(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/crane_x7_examples" TYPE FILE FILES "/home/tokunoshoshi/ros_ws/hma_ws/src/crane_x7_ros/crane_x7_examples/package.xml")
endif()

if(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/crane_x7_examples" TYPE PROGRAM FILES
    "/home/tokunoshoshi/ros_ws/hma_ws/src/crane_x7_ros/crane_x7_examples/scripts/crane_x7_pick_and_place_demo.py"
    "/home/tokunoshoshi/ros_ws/hma_ws/src/crane_x7_ros/crane_x7_examples/scripts/gripper_action_example.py"
    "/home/tokunoshoshi/ros_ws/hma_ws/src/crane_x7_ros/crane_x7_examples/scripts/pose_groupstate_example.py"
    )
endif()

