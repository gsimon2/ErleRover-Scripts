#!/bin/bash

#Terminal 2: Gazebo
xterm -title "Gazebo" -e "
        source ~/simulation/ros_catkin_ws/devel/setup.bash;
        roslaunch ardupilot_sitl_gazebo_plugin rover_maze.launch"

