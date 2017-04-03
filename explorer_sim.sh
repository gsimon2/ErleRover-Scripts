#!/bin/bash
#This script starts up all other scripts required to start the explorer simulation of the rover in Gazebo where the rover can take manual commands from the MAVProxy terminal or from a script
#
# GAS 2017-03-15

./start_MAVProxy.sh &
./start_gazebo_explorer.sh &
./start_FPV.sh &
./start_explorer_node.sh &
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


