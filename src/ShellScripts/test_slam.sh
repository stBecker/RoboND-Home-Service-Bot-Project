#!/bin/sh

#xterm  -e  " source /opt/ros/kinetic/setup.bash; roscore" & 
#sleep 5
xterm  -e  "roslaunch ../turtlebot_simulator/turtlebot_gazebo/launch/turtlebot_world.launch  world_file:='$(rospack find World)/uWorld.world'" &
sleep 5
xterm  -e  "roslaunch ../turtlebot_simulator/turtlebot_gazebo/launch/gmapping_demo.launch " &
sleep 5
xterm  -e  "roslaunch ../turtlebot_interactions/turtlebot_rviz_launchers/launch/view_navigation.launch " &
sleep 5
xterm  -e  "roslaunch ../turtlebot/turtlebot_teleop/launch/keyboard_teleop.launch "
#sleep 5
#xterm  -e  " rosrun rviz rviz"

