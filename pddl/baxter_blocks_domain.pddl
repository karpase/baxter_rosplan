(define (domain baxter-blocks)
  (:requirements :typing)
  (:types position block arm)
  
  (:predicates
  (arm_is_free ?a - arm)
  (pos_is_empty ?p - position)
  (pos_is_not_empty ?p - position)
  (block_at_pos ?p - position ?b - block)
  (arm_holds_block ?a - arm ?b - block)
  (is_pos_reachable ?p - position ?a - arm))
  
  (:action pick
    :parameters (?a - arm ?b - block ?p - position)
    :precondition (and
           (arm_is_free ?a)
		   (block_at_pos ?p ?b)
		   (is_pos_reachable ?p ?a))
    :effect (and 
        (not (arm_is_free ?a))
        (pos_is_empty ?p)
        (not (pos_is_not_empty ?p))
        (not (block_at_pos ?p ?b))
        (arm_holds_block ?a ?b)))
  
  (:action put
    :parameters (?a - arm ?b - block ?p - position)
    :precondition (and
           (arm_holds_block ?a ?b)
           (pos_is_empty ?p)
           (is_pos_reachable ?p ?a))
    :effect (and 
        (not (arm_holds_block ?a ?b))
        (not (pos_is_empty ?p))
        (pos_is_not_empty ?p)
        (arm_is_free ?a)
        (block_at_pos ?p ?b))))