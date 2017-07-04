#!/usr/bin/env python 

import baxter_interface
import rospy

def main():
    rospy.init_node("baxter_print_pos")
	
    left = baxter_interface.Limb('left')
    right = baxter_interface.Limb('right')

    print('left',left.endpoint_pose())
    print('right',right.endpoint_pose())

    rospy.spin()

if __name__ == '__main__':
    main()
