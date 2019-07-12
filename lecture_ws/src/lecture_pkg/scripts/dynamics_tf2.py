#!/usr/bin/env python

import rospy
import tf
import math

def handle_pose(a, b, c):
    br = tf.TransformBroadcaster()
    br.sendTransform((a, b, c),tf.transformations.quaternion_from_euler(0, 0, 0),rospy.Time.now(),"link4","link3")

if __name__ == '__main__':
    rospy.init_node('dynamics_tf')
    r = rospy.Rate(100)
    x = 1
    y = 0
    z = 0

    theta1 = math.pi / 100
    theta2 = math.pi / 100
    l = 0
    while not rospy.is_shutdown():
        handle_pose(x, y, z)
        x = math.cos(theta1 * l) * math.cos(theta2 * l)
        y = math.cos(theta1 * l) * math.sin(theta2 * l)
        z = math.sin(theta1 * l)
        l = l + 1
        r.sleep()
