#!/bin/bash

image_name="noetic-ohrc"

rocker --nvidia --x11  --privileged myenv:${image_name} --volume $HOME/ros/${image_name}:/root/ros


