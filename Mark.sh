#!/bin/bash
#
# This lets the system startup and changes the directory to the working directory.
sleep 10
cd /home/pi/Mark
#
# This sets the script that monitors the request folder. Then says a gerneral greeting.
./final.sh &
sleep 1
./edit.sh 'Welcome Mason, My name is Mark.'
