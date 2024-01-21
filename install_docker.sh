#!/bin/bash

sudo apt update
sudo apt -y install ca-certificates curl gnupg python3-pip
sudo mkdir -p /etc/apt/keyrings
curl -fsSL https://download.docker.com/linux/ubuntu/gpg | sudo gpg --dearmor -o /etc/apt/keyrings/docker.gpg
echo "deb [arch=$(dpkg --print-architecture) signed-by=/etc/apt/keyrings/docker.gpg] https://download.docker.com/linux/ubuntu jammy stable" | sudo tee /etc/apt/sources.list.d/docker.list > /dev/null
sudo apt update
sudo apt -y install docker-ce docker-ce-cli containerd.io
sudo apt -y install docker-compose-plugin
sudo gpasswd -a $USER docker
echo "export PATH=$PATH:~/.local/bin" >> ~/.bashrc
export PATH=$PATH:~/.local/bin
python3 -m pip install rocker

sudo chmod 666 /var/run/docker.sock

