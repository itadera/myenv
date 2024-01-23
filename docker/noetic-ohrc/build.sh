#!/bin/bash


DIR=$(cd $(dirname $0);pwd)
image_name="noetic-ohrc"

# Create the workspace
mkdir -p $HOME/ros/${image_name}/catkin_ws/src 

cd $HOME/ros/${image_name}/catkin_ws/src
if [ ! -d OpenHRC ]; then
    git clone https://github.com/itadera/OpenHRC.git 
    cd OpenHRC
    git submodule update --init --recursive
fi



cd $DIR
docker build -t myenv:noetic-ohrc .
