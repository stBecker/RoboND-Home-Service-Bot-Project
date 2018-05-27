#!/bin/sh

xterm  -e  "roslaunch /home/workspace/catkin_ws/src/turtlebot_simulator/turtlebot_gazebo/launch/turtlebot_world.launch world_file:='/home/workspace/catkin_ws/src/World/uWorld.world'" &
sleep 5
xterm  -e  "roslaunch /home/workspace/catkin_ws/src/turtlebot_simulator/turtlebot_gazebo/launch/amcl_demo.launch map_file:='/home/workspace/catkin_ws/src/World/map1000.yaml' " &
sleep 5
xterm  -e  "roslaunch /home/workspace/catkin_ws/src/turtlebot_interactions/turtlebot_rviz_launchers/launch/view_navigation.launch "




