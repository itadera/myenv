FROM osrf/ros:noetic-desktop-full



RUN apt update && apt-get upgrade -y 
RUN apt install git zsh wget curl -y
