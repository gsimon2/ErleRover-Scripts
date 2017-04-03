#!/bin/bash
#This script will run a python script that is brings up a FPV for the forward facing camera that is on the rover
#
# GAS 2017-03-15
#
xterm -title "FPV forward camera" -e "
	cd ~/simulation/ardupilot/APMrover2/; 
	python image_visual.py"

