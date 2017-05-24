# ErleRover-Scripts
These scripts are to help automate some of the ErleRover simulation software.

Running Options:
>"./basic_sim.sh"
	-This starts a basic simulation of the earlerover in a blank gazebo world.
	-Use the MAVProxy terminal to manually send commands
	
>"./explorer_sim.sh"
	-This starts a simulation of the erlerover in a small maze.
	-Commands will be received from "/home/simongle/simulation/ros_catkin_ws/src/gazebo_python_examples/erle_rover_explorer/scripts/erle_rover_explorer.py"
		-Simple obstacle avoidance script
	

Enhancements (Start after a running option):
>"./laser_mapping.sh"
	-Uses RViz to create a 2D map of the rangefinder outputs.
	-Once RViz is open, hit ctrl+n and select "map/map" from the "by topic" tab
	-Next change "Fixed Frame" from "map" to "sonar2_link"]
	
>"./start_FPV.sh"
	-This script will run a python script that is brings up a FPV for the forward facing camera that is on the rover
	

Clean up (sometimes processes tend to hang around after stopping the scripts):
>"killall -9 gzserver gzclient xterm roscore rosmaster rosout mavproxy.py"

	
