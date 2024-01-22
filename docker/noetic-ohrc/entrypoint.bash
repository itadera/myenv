#! /bin/bash

source /opt/ros/noetic/setup.bash

cd ~/ros/catkin_ws
catkin init

cd ~/ros/catkin_ws/src
git clone https://github.com/itadera/OpenHRC.git 

sudo apt update
rosdep update

cd ~/ros/catkin_ws/src/OpenHRC
git submodule update --init --recursive
rosdep install -i -y --from-paths ./ 

cd ~/ros/catkin_ws
catkin build -DCMAKE_BUILD_TYPE=Release

source ~/ros/catkin_ws/devel/setup.bash

# zsh

exec $@

