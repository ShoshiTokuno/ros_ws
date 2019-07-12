#!/usr/bin/env python
# license removed for brevity
import rospy
import roslib
import cv2
from geometry_msgs.msg import Twist

if __name__ == '__main__':
  rospy.init_node('velocity_key_c')
  image = cv2.imread(roslib.packages.get_pkg_dir('lecture_pkg') + '/files/InputKey.png')
  pub = rospy.Publisher('/turtle1/cmd_vel', Twist, queue_size=10)
  vel = Twist()
  cv2.imshow('InputWindow',image)
  r = rospy.Rate(10)
  while not rospy.is_shutdown():
    key = cv2.waitKey(1)
    print(key)
    if key == 119:
      vel.linear.x = 2.0
      vel.angular.z = 0.0
    elif key == 115:
      vel.linear.x = -2.0
      vel.angular.z = 0.0
    elif key == 97:
      vel.linear.x = 1.0
      vel.angular.z = 1.0
    elif key == 100:
      vel.linear.x = 1.0
      vel.angular.z = -1.0
    elif key == 113:
      vel.linear.x = 0.0
      vel.angular.z = 0.0
    elif key == 27:
      break
    pub.publish(vel)
    rospy.loginfo(key)
    r.sleep()
vel.linear.x = 0.0
vel.angular.z = 0.0
pub.publish(vel)
