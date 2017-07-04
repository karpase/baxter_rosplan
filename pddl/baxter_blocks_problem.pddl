(define (problem blocks-1)
  (:domain baxter-blocks)
  (:objects 
    arm_right arm_left - arm
    orange blue yellow green red - block
    pos-1 pos-2 pos-3 pos-4 pos-5 pos-free - position)
    
  (:init
    (arm_is_free arm_right)
    (arm_is_free arm_left)
    (pos_is_empty pos-free)
    (pos_is_not_empty pos-1)
    (pos_is_not_empty pos-2)
    (pos_is_not_empty pos-3)
    (pos_is_not_empty pos-4)
    (pos_is_not_empty pos-5)
    (block_at_pos pos-1 orange)
    (block_at_pos pos-2 blue)
    (block_at_pos pos-3 yellow)
    (block_at_pos pos-4 green)
    (block_at_pos pos-5 red)
    (is_pos_reachable pos-1 arm_left)
    (is_pos_reachable pos-2 arm_left)
    (is_pos_reachable pos-3 arm_left)
    (is_pos_reachable pos-3 arm_right)
    (is_pos_reachable pos-4 arm_right)
    (is_pos_reachable pos-5 arm_right)
    (is_pos_reachable pos-free arm_right)
    (is_pos_reachable pos-free arm_left))
    
  (:goal
    (and 
    (block_at_pos pos-3 green)
    (block_at_pos pos-5 orange))))
    