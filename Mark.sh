#!/bin/bash
#
# Sleeps for 10 seconds to wait for system to boot then executes final.sh.
sleep 10
# Changes the directort to working directory and sets a cool thing.
cd /home/pi/Mark
./final.sh &
./edit.sh 'Welcome Mason, My name is Mark.'
