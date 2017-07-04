#!/bin/bash

rosservice call /kcl_rosplan/update_knowledge_base "update_type: 0
knowledge:
  knowledge_type: 0
  instance_type: 'arm'
  instance_name: 'left'
  attribute_name: ''
  function_value: 0.0";

rosservice call /kcl_rosplan/update_knowledge_base "update_type: 0
knowledge:
  knowledge_type: 0
  instance_type: 'arm'
  instance_name: 'right'
  attribute_name: ''
  function_value: 0.0";

rosservice call /kcl_rosplan/update_knowledge_base "update_type: 0
knowledge:
  knowledge_type: 0
  instance_type: 'position'
  instance_name: 'p0'
  attribute_name: ''
  function_value: 0.0";

rosservice call /kcl_rosplan/update_knowledge_base "update_type: 0
knowledge:
  knowledge_type: 0
  instance_type: 'position'
  instance_name: 'p1'
  attribute_name: ''
  function_value: 0.0";

rosservice call /kcl_rosplan/update_knowledge_base "update_type: 0
knowledge:
  knowledge_type: 0
  instance_type: 'position'
  instance_name: 'p2'
  attribute_name: ''
  function_value: 0.0";

rosservice call /kcl_rosplan/update_knowledge_base "update_type: 0
knowledge:
  knowledge_type: 0
  instance_type: 'position'
  instance_name: 'p3'
  attribute_name: ''
  function_value: 0.0";

rosservice call /kcl_rosplan/update_knowledge_base "update_type: 0
knowledge:
  knowledge_type: 0
  instance_type: 'position'
  instance_name: 'p4'
  attribute_name: ''
  function_value: 0.0";

rosservice call /kcl_rosplan/update_knowledge_base "update_type: 0
knowledge:
  knowledge_type: 0
  instance_type: 'position'
  instance_name: 'p5'
  attribute_name: ''
  function_value: 0.0";


rosservice call /kcl_rosplan/update_knowledge_base "update_type: 0
knowledge:
  knowledge_type: 0
  instance_type: 'block'
  instance_name: 'red'
  attribute_name: ''
  function_value: 0.0";

rosservice call /kcl_rosplan/update_knowledge_base "update_type: 0
knowledge:
  knowledge_type: 0
  instance_type: 'block'
  instance_name: 'orange'
  attribute_name: ''
  function_value: 0.0";

rosservice call /kcl_rosplan/update_knowledge_base "update_type: 0
knowledge:
  knowledge_type: 0
  instance_type: 'block'
  instance_name: 'green'
  attribute_name: ''
  function_value: 0.0";

rosservice call /kcl_rosplan/update_knowledge_base "update_type: 0
knowledge:
  knowledge_type: 0
  instance_type: 'block'
  instance_name: 'yellow'
  attribute_name: ''
  function_value: 0.0";

rosservice call /kcl_rosplan/update_knowledge_base "update_type: 0
knowledge:
  knowledge_type: 0
  instance_type: 'block'
  instance_name: 'blue'
  attribute_name: ''
  function_value: 0.0";




rosservice call /kcl_rosplan/update_knowledge_base "update_type: 0
knowledge:
  knowledge_type: 1
  instance_type: ''
  instance_name: ''
  attribute_name: 'is_pos_reachable'
  values:
  - {key: 'p', value: 'p0'}
  - {key: 'a', value: 'left'}
  function_value: 0.0"


rosservice call /kcl_rosplan/update_knowledge_base "update_type: 0
knowledge:
  knowledge_type: 1
  instance_type: ''
  instance_name: ''
  attribute_name: 'is_pos_reachable'
  values:
  - {key: 'p', value: 'p1'}
  - {key: 'a', value: 'left'}
  function_value: 0.0"


rosservice call /kcl_rosplan/update_knowledge_base "update_type: 0
knowledge:
  knowledge_type: 1
  instance_type: ''
  instance_name: ''
  attribute_name: 'is_pos_reachable'
  values:
  - {key: 'p', value: 'p2'}
  - {key: 'a', value: 'left'}
  function_value: 0.0"


rosservice call /kcl_rosplan/update_knowledge_base "update_type: 0
knowledge:
  knowledge_type: 1
  instance_type: ''
  instance_name: ''
  attribute_name: 'is_pos_reachable'
  values:
  - {key: 'p', value: 'p3'}
  - {key: 'a', value: 'left'}
  function_value: 0.0"


rosservice call /kcl_rosplan/update_knowledge_base "update_type: 0
knowledge:
  knowledge_type: 1
  instance_type: ''
  instance_name: ''
  attribute_name: 'is_pos_reachable'
  values:
  - {key: 'p', value: 'p0'}
  - {key: 'a', value: 'right'}
  function_value: 0.0"

rosservice call /kcl_rosplan/update_knowledge_base "update_type: 0
knowledge:
  knowledge_type: 1
  instance_type: ''
  instance_name: ''
  attribute_name: 'is_pos_reachable'
  values:
  - {key: 'p', value: 'p3'}
  - {key: 'a', value: 'right'}
  function_value: 0.0"

rosservice call /kcl_rosplan/update_knowledge_base "update_type: 0
knowledge:
  knowledge_type: 1
  instance_type: ''
  instance_name: ''
  attribute_name: 'is_pos_reachable'
  values:
  - {key: 'p', value: 'p4'}
  - {key: 'a', value: 'right'}
  function_value: 0.0"

rosservice call /kcl_rosplan/update_knowledge_base "update_type: 0
knowledge:
  knowledge_type: 1
  instance_type: ''
  instance_name: ''
  attribute_name: 'is_pos_reachable'
  values:
  - {key: 'p', value: 'p5'}
  - {key: 'a', value: 'right'}
  function_value: 0.0"


rosservice call /kcl_rosplan/update_knowledge_base "update_type: 0
knowledge:
  knowledge_type: 1
  instance_type: ''
  instance_name: ''
  attribute_name: 'arm_is_free'
  values:
  - {key: 'a', value: 'right'}
  function_value: 0.0"

rosservice call /kcl_rosplan/update_knowledge_base "update_type: 0
knowledge:
  knowledge_type: 1
  instance_type: ''
  instance_name: ''
  attribute_name: 'arm_is_free'
  values:
  - {key: 'a', value: 'left'}
  function_value: 0.0"


rosservice call /kcl_rosplan/update_knowledge_base "update_type: 0
knowledge:
  knowledge_type: 1
  instance_type: ''
  instance_name: ''
  attribute_name: 'pos_is_not_empty'
  values:
  - {key: 'p', value: 'p1'}
  function_value: 0.0"

rosservice call /kcl_rosplan/update_knowledge_base "update_type: 0
knowledge:
  knowledge_type: 1
  instance_type: ''
  instance_name: ''
  attribute_name: 'pos_is_not_empty'
  values:
  - {key: 'p', value: 'p2'}
  function_value: 0.0"

rosservice call /kcl_rosplan/update_knowledge_base "update_type: 0
knowledge:
  knowledge_type: 1
  instance_type: ''
  instance_name: ''
  attribute_name: 'pos_is_not_empty'
  values:
  - {key: 'p', value: 'p3'}
  function_value: 0.0"

rosservice call /kcl_rosplan/update_knowledge_base "update_type: 0
knowledge:
  knowledge_type: 1
  instance_type: ''
  instance_name: ''
  attribute_name: 'pos_is_not_empty'
  values:
  - {key: 'p', value: 'p4'}
  function_value: 0.0"

rosservice call /kcl_rosplan/update_knowledge_base "update_type: 0
knowledge:
  knowledge_type: 1
  instance_type: ''
  instance_name: ''
  attribute_name: 'pos_is_not_empty'
  values:
  - {key: 'p', value: 'p5'}
  function_value: 0.0"

rosservice call /kcl_rosplan/update_knowledge_base "update_type: 0
knowledge:
  knowledge_type: 1
  instance_type: ''
  instance_name: ''
  attribute_name: 'pos_is_empty'
  values:
  - {key: 'p', value: 'p0'}
  function_value: 0.0"

