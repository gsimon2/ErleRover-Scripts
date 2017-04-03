#!/bin/bash
#This script starts the Erle SLAM node which will be able to feed sonar information to RViz to generate a maze map 
#
# GAS 2017-03-19

xterm -title "SLAM Node" -e "
	cd ~/simulation/ros_catkin_ws;
	source devel/setup.bash;
	roslaunch hector_mapping mapping_default.launch"
