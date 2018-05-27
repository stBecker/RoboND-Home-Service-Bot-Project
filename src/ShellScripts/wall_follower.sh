#!/bin/sh

xterm  -e  "roslaunch /home/workspace/catkin_ws/src/turtlebot_simulator/turtlebot_gazebo/launch/turtlebot_world.launch " &
sleep 5
xterm  -e  "roslaunch /home/workspace/catkin_ws/src/turtlebot_simulator/turtlebot_gazebo/launch/gmapping_demo.launch " &
sleep 5
xterm  -e  "roslaunch /home/workspace/catkin_ws/src/turtlebot_interactions/turtlebot_rviz_launchers/launch/view_navigation.launch " &
sleep 5
xterm  -e  "rosrun wall_follower wall_follower"



