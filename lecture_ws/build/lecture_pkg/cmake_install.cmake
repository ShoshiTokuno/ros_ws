# Install script for directory: /home/tokunoshoshi/ros_ws/lecture_ws/src/lecture_pkg

# Set the install prefix
if(NOT DEFINED CMAKE_INSTALL_PREFIX)
  set(CMAKE_INSTALL_PREFIX "/home/tokunoshoshi/ros_ws/lecture_ws/install")
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
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/lecture_pkg/action" TYPE FILE FILES
    "/home/tokunoshoshi/ros_ws/lecture_ws/src/lecture_pkg/action/DoDishes.action"
    "/home/tokunoshoshi/ros_ws/lecture_ws/src/lecture_pkg/action/Fibonacci.action"
    )
endif()

if(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/lecture_pkg/msg" TYPE FILE FILES
    "/home/tokunoshoshi/ros_ws/lecture_ws/devel/share/lecture_pkg/msg/DoDishesAction.msg"
    "/home/tokunoshoshi/ros_ws/lecture_ws/devel/share/lecture_pkg/msg/DoDishesActionGoal.msg"
    "/home/tokunoshoshi/ros_ws/lecture_ws/devel/share/lecture_pkg/msg/DoDishesActionResult.msg"
    "/home/tokunoshoshi/ros_ws/lecture_ws/devel/share/lecture_pkg/msg/DoDishesActionFeedback.msg"
    "/home/tokunoshoshi/ros_ws/lecture_ws/devel/share/lecture_pkg/msg/DoDishesGoal.msg"
    "/home/tokunoshoshi/ros_ws/lecture_ws/devel/share/lecture_pkg/msg/DoDishesResult.msg"
    "/home/tokunoshoshi/ros_ws/lecture_ws/devel/share/lecture_pkg/msg/DoDishesFeedback.msg"
    )
endif()

if(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/lecture_pkg/msg" TYPE FILE FILES
    "/home/tokunoshoshi/ros_ws/lecture_ws/devel/share/lecture_pkg/msg/FibonacciAction.msg"
    "/home/tokunoshoshi/ros_ws/lecture_ws/devel/share/lecture_pkg/msg/FibonacciActionGoal.msg"
    "/home/tokunoshoshi/ros_ws/lecture_ws/devel/share/lecture_pkg/msg/FibonacciActionResult.msg"
    "/home/tokunoshoshi/ros_ws/lecture_ws/devel/share/lecture_pkg/msg/FibonacciActionFeedback.msg"
    "/home/tokunoshoshi/ros_ws/lecture_ws/devel/share/lecture_pkg/msg/FibonacciGoal.msg"
    "/home/tokunoshoshi/ros_ws/lecture_ws/devel/share/lecture_pkg/msg/FibonacciResult.msg"
    "/home/tokunoshoshi/ros_ws/lecture_ws/devel/share/lecture_pkg/msg/FibonacciFeedback.msg"
    )
endif()

if(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/lecture_pkg/cmake" TYPE FILE FILES "/home/tokunoshoshi/ros_ws/lecture_ws/build/lecture_pkg/catkin_generated/installspace/lecture_pkg-msg-paths.cmake")
endif()

if(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include" TYPE DIRECTORY FILES "/home/tokunoshoshi/ros_ws/lecture_ws/devel/include/lecture_pkg")
endif()

if(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/roseus/ros" TYPE DIRECTORY FILES "/home/tokunoshoshi/ros_ws/lecture_ws/devel/share/roseus/ros/lecture_pkg")
endif()

if(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/common-lisp/ros" TYPE DIRECTORY FILES "/home/tokunoshoshi/ros_ws/lecture_ws/devel/share/common-lisp/ros/lecture_pkg")
endif()

if(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/gennodejs/ros" TYPE DIRECTORY FILES "/home/tokunoshoshi/ros_ws/lecture_ws/devel/share/gennodejs/ros/lecture_pkg")
endif()

if(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  execute_process(COMMAND "/usr/bin/python" -m compileall "/home/tokunoshoshi/ros_ws/lecture_ws/devel/lib/python2.7/dist-packages/lecture_pkg")
endif()

if(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/python2.7/dist-packages" TYPE DIRECTORY FILES "/home/tokunoshoshi/ros_ws/lecture_ws/devel/lib/python2.7/dist-packages/lecture_pkg")
endif()

if(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/pkgconfig" TYPE FILE FILES "/home/tokunoshoshi/ros_ws/lecture_ws/build/lecture_pkg/catkin_generated/installspace/lecture_pkg.pc")
endif()

if(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/lecture_pkg/cmake" TYPE FILE FILES "/home/tokunoshoshi/ros_ws/lecture_ws/build/lecture_pkg/catkin_generated/installspace/lecture_pkg-msg-extras.cmake")
endif()

if(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/lecture_pkg/cmake" TYPE FILE FILES
    "/home/tokunoshoshi/ros_ws/lecture_ws/build/lecture_pkg/catkin_generated/installspace/lecture_pkgConfig.cmake"
    "/home/tokunoshoshi/ros_ws/lecture_ws/build/lecture_pkg/catkin_generated/installspace/lecture_pkgConfig-version.cmake"
    )
endif()

if(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/lecture_pkg" TYPE FILE FILES "/home/tokunoshoshi/ros_ws/lecture_ws/src/lecture_pkg/package.xml")
endif()

