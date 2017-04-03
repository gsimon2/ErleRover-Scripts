#!/bin/bash
# This script start MAVProxy for the Erle-Rover simulation in Gazebo and opens a terminal that will be used to manually send commands to the rover
#
# GAS 2017-03-15

#Terminal 1: MAVProxy
# This terminal will be used to enter commands to the rover
# set SYSID_MYGCS to  255 for manual control
#        ''       to    1 for script control
xterm -title "MAVProxy" -hold  -e "
	source ~/simulation/ros_catkin_ws/devel/setup.bash;
	cd ~/simulation/ardupilot/APMrover2;
	echo \"param load /home/simongle/simulation/ardupilot/Tools/Frame_params/3DR_Rover.param\";
	echo
	echo \" (For manual control) - param set SYSID_MYGCS 255\";
	echo
	echo \" (For script control) - param set SYSID_MYGCS 1\";
	../Tools/autotest/sim_vehicle.sh -j 4 -f Gazebo"


