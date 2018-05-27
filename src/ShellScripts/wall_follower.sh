#!/bin/sh

xterm  -e  "roslaunch ../turtlebot_simulator/turtlebot_gazebo/launch/turtlebot_world.launch  world_file:='$(rospack find World)/uWorld.world'" &
sleep 5
xterm  -e  "roslaunch ../turtlebot_simulator/turtlebot_gazebo/launch/gmapping_demo.launch " &
sleep 5
xterm  -e  "roslaunch ../turtlebot_interactions/turtlebot_rviz_launchers/launch/view_navigation.launch " &
sleep 5
xterm  -e  "rosrun wall_follower wall_follower"



