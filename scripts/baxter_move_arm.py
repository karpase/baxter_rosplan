#!/usr/bin/env python 

import baxter_interface
import rospy
import copy
from baxter_interface import CHECK_VERSION
import ik_command 
import baxter_coordinates



right_iksvc, right_ns = ik_command.connect_service('right')
left_iksvc, left_ns = ik_command.connect_service('left')

delta_z = 0.3

def pick(side, pos):
    if side not in ["left","right"]:
        raise Exception("Invalid side " + side)
    pos_map = baxter_coordinates.coords[side]
    if pos not in pos_map:
         raise Exception(side + " can not reach " + str(pos))

    gripper = baxter_interface.Gripper(side, CHECK_VERSION)

    coords = pos_map[pos]
    pre_grasp_coords = {}
    pre_grasp_coords['position'] = baxter_interface.limb.Limb.Point(x=coords['position'].x, y=coords['position'].y, z=coords['position'].z+delta_z)
    pre_grasp_coords['orientation'] = coords['orientation']
    
    go_to_coordinate(side, pre_grasp_coords)

    gripper.open(True)
    go_to_coordinate(side, coords)
    gripper.close(True)

    go_to_coordinate(side, pre_grasp_coords)

def place(side, pos):
    if side not in ["left","right"]:
        raise Exception("Invalid side " + side)
    pos_map = baxter_coordinates.coords[side]
    if pos not in pos_map:
         raise Exception(side + " can not reach " + str(pos))

    gripper = baxter_interface.Gripper(side, CHECK_VERSION)

    coords = pos_map[pos]
    pre_grasp_coords = {}
    pre_grasp_coords['position'] = baxter_interface.limb.Limb.Point(x=coords['position'].x, y=coords['position'].y, z=coords['position'].z+delta_z)
    pre_grasp_coords['orientation'] = coords['orientation']
    
    go_to_coordinate(side, pre_grasp_coords)

    go_to_coordinate(side, coords)
    gripper.open(True)

    go_to_coordinate(side, pre_grasp_coords)
    

def go_to_coordinate(side, c):
    if side == "left":
        iksvc = left_iksvc
    else:
        iksvc = right_iksvc
    limb = baxter_interface.Limb(side)

    coordinate_as_list = [c['position'].x, c['position'].y, c['position'].z, c['orientation'].x, c['orientation'].y, c['orientation'].z, c['orientation'].w]
    print("moving to", coordinate_as_list)    
    ik_command.service_request(iksvc, coordinate_as_list, side)

	
def test():
   print("picking")
   pick("right",5)
   print("done")

   print("placing")
   place("right",0)
   print("done")

   print("picking")
   pick("left",0)
   print("done")

   print("placing")
   place("left",1)
   print("done")

   #pick("left",2)
   #place("left",3)

   #pick("right",5)

   #pick("left",3)

   #pick("right",3)
	

   #grip_left.close(True)
   #grip_left.open(True)
   #left.move_to_neutral()

def main():
    rospy.init_node("baxter_move_arm")
    
	
    

if __name__ == '__main__':
    main()

