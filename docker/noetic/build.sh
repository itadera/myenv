#!/bin/bash


DIR=$(cd $(dirname $0);pwd)
image_name="noetic"

# Create the workspace
mkdir -p $HOME/ros/${image_name}/catkin_ws/src 
cd $HOME/ros/${image_name}/catkin_ws/src

cd $DIR
docker build -t myenv:${image_name} . 
