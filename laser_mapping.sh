#!/bin/bash
#This script starts up all other scripts required to start the explorer simulation of the rover in Gazebo where the rover can take manual commands from the MAVProxy terminal or from a script. This scrit also sets up the needed nodes to generate a map in RViz.
#
# GAS 2017-03-17


./start_hector_mapping_node.sh &
echo "Scripts successfully started!"
echo "For mapping: In RViz create a new map"
echo "   and set Display>Global Options>Fixed Frame = sonar2_link"
echo
rosrun rviz rviz 

