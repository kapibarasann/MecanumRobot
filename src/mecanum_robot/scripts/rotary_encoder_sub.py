#!/usr/bin/python
# -*- coding: utf-8 -*-

import rospy
from mecanum_robot.msg import rotary_encoder

def callback(msg):
    print('{0} {1} {2} {3}'.format(msg.rf, msg.rb, msg.lf, msg.lb))

def main():
    rospy.init_node('rotary_encoder_sub', anonymous=True)
    rospy.Subscriber('rotary_encoder', rotary_encoder, callback, queue_size=10)
    rospy.spin()

if __name__ == "__main__":
    main()