#!/bin/bash
#
# GAS 2017-04-13

./start_MAVProxy.sh &

xterm -title "Explorer Node" -e "
	cd ~/simulation/ros_catkin_ws;
	source devel/setup.bash;
	rosrun erle_rover_explorer msu_rover_explorer.py" &
	
xterm -title "Gazebo" -e "
        source ~/simulation/ros_catkin_ws/devel/setup.bash;
        roslaunch ardupilot_sitl_gazebo_plugin msu.launch" &
        	
echo "Scripts successfully started!"
echo
echo "Enter the following into MAVPropxy:"
echo "param load /home/simongle/simulation/ardupilot/Tools/Frame_params/3DR_Rover.param"
echo
echo "(For manual control enter:)"
echo "param set SYSID_MYGCS 255"
echo
echo "(For scripted control enter:)"
echo "param set SYSID_MYGCS 1"
