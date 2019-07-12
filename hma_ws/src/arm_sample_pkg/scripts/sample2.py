#! /usr/bin/env python
# -*- coding: utf-8 -*-

import rospy
import moveit_commander
import actionlib
import math
from geometry_msgs.msg import Point, Pose
from gazebo_msgs.msg import ModelStates
from control_msgs.msg import GripperCommandAction, GripperCommandGoal
from tf.transformations import quaternion_from_euler, euler_from_quaternion

gazebo_model_states = ModelStates()

def callback(msg):
    global gazebo_model_states
    gazebo_model_states = msg

def yaw_of(object_orientation):
    euler = euler_from_quaternion((object_orientation.x, object_orientation.y, object_orientation.z, object_orientation.w))
    return euler[2]

def main():
    global gazebo_model_states

    sub_model_states = rospy.Subscriber("gazebo/model_states", ModelStates, callback, queue_size=1)

    arm = moveit_commander.MoveGroupCommander("arm")
    arm.set_max_velocity_scaling_factor(0.4)
    gripper = actionlib.SimpleActionClient("crane_x7/gripper_controller/gripper_cmd", GripperCommandAction)
    gripper.wait_for_server()
    gripper_goal = GripperCommandGoal()
    gripper_goal.command.max_effort = 4.0

    rospy.sleep(1.0)

    count = 0
    
    while True:
        gripper_goal.command.position = 0.0
        gripper.send_goal(gripper_goal)
        gripper.wait_for_result(rospy.Duration(1.0))

        arm.set_named_target("home")
        arm.go()
        rospy.sleep(1.0)
         
        print "count_number"
        print count % 3

        target_pose = Pose()
        if count % 3 == 0:
            target_pose.position.x = 0.2
            target_pose.position.y = 0.2
            target_pose.position.z = 0.0
            q = quaternion_from_euler(math.pi/2, 0.0, math.pi/2)
        elif count % 3 == 1:
            target_pose.position.x = 0.1
            target_pose.position.y = 0.2
            target_pose.position.z = 0.2
            q = quaternion_from_euler(0.0, 0.0, math.pi/2)
        else:
            target_pose.position.x = -0.3
            target_pose.position.y = 0.0
            target_pose.position.z = 0.2
            q = quaternion_from_euler(math.pi/2, 0.0, 0.0)

        target_pose.orientation.x = q[0]
        target_pose.orientation.y = q[1]
        target_pose.orientation.z = q[2]
        target_pose.orientation.w = q[3]

        arm.set_pose_target(target_pose)
        #arm.go()
        if arm.go() is False:
            print "buri buri"
            continue
        rospy.sleep(1.0)

        count += 1

if __name__ == '__main__':
    rospy.init_node("sample2")

    try:
        if not rospy.is_shutdown():
            main()
    except rospy.ROSInterruptException:
        pass
