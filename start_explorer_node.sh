#!/bin/bash
#This script runs the erle_rover_explorer.py script that controls the rover's obstacle avoidance and brings up a window to show the sonar readings
#
# GAS 2017-03-15

xterm -title "Explorer Node" -e "
	cd ~/simulation/ros_catkin_ws;
	source devel/setup.bash;
	rosrun erle_rover_explorer erle_rover_explorer.py"
