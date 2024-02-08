#! /usr/bin/env bash
xacro $(rospack find mirobot_mujoco_ros)/assets/mirobot_model.urdf.xacro | urdf2mjcf --lighting - $(rospack find mirobot_mujoco_ros)/assets/mirobot_model.xml