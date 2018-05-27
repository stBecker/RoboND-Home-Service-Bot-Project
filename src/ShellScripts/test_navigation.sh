#!/bin/sh

xterm  -e  "roslaunch ../turtlebot_simulator/turtlebot_gazebo/launch/turtlebot_world.launch world_file:='$(rospack find World)/uWorld.world'" &
sleep 5
xterm  -e  "roslaunch ../turtlebot_simulator/turtlebot_gazebo/launch/amcl_demo.launch map_file:='$(rospack find World)/map1000.yaml' " &
sleep 5
xterm  -e  "roslaunch ../turtlebot_interactions/turtlebot_rviz_launchers/launch/view_navigation.launch "




