#! /usr/bin/env python

import rospy
import actionlib
from lecture_pkg.msg import *

class DoDishesServer:
    _feedback = lecture_pkg.msg.DoDishesFeedback()
    _result = lecture_pkg.msg.DoDishesResult()
    
    def __init__(self):
        self.server = actionlib.SimpleActionServer('do_dishes', DoDishesAction,self.execute,False)
        self.server.start()

    def execute(self, goal):
        print "Requesting dishwasher %d"%(goal.dishwasher_id)
        result = self.server.get_default_result()
        result.total_dishes_cleaned = 100
        for i in range(1,10):
            self._feedback.percent_complete = 10*i
            self.server.publish_feedback(self._feedback)
        print "Returning dishes_cleaned %d"%(result.total_dishes_cleaned)
        self.server.set_succeeded(result)

if __name__ == '__main__':
    rospy.init_node('do_dishes_server')
    server = DoDishesServer()
    rospy.spin()
