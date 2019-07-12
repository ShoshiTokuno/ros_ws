#!/usr/bin/env python

import rospy
import tf


def handle_pose(a):
    br = tf.TransformBroadcaster()
    br.sendTransform((a, 0, 0),tf.transformations.quaternion_from_euler(0, 0, 0),rospy.Time.now(),"link4","link3")

if __name__ == '__main__':
    rospy.init_node('dynamics_tf')
    r = rospy.Rate(1)
    b = 0

    while not rospy.is_shutdown():
        handle_pose(b)
        b = b + 0.1
        r.sleep()
