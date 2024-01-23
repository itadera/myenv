#! /bin/bash

source /opt/ros/noetic/setup.bash

cd ~/ros/catkin_ws

if [ ! -d devel ]; then
    sudo apt update
    rosdep update
    rosdep install -i -y --from-paths ./src/ 
    catkin build -DCMAKE_BUILD_TYPE=Release
else
    echo "devel directory exists"
fi


cd ~/ros/catkin_ws/devel
source setup.bash


cd ~/ros
# zsh

exec $@

