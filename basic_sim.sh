#!/bin/bash
#This script starts up all other scripts required to start the basic simulation of the rover in Gazebo where the rover can take manual commands from the MAVProxy terminal
#
# GAS 2017-03-15

./start_MAVProxy.sh &
./start_gazebo_blank.sh &
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
echo "RC 3 - throttle. (1100-1900), 1500 = standstill"
echo "RC 1 - steering."
