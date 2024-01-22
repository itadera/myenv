#! /bin/bash

source /opt/ros/noetic/setup.bash

cd ~/ros/catkin_ws
catkin init

sudo apt update
rosdep update
rosdep install -i -y --from-paths ./src/ 
catkin build -DCMAKE_BUILD_TYPE=Release
source ~/ros/catkin_ws/devel/setup.bash


cd ~/ros
# zsh

exec $@

