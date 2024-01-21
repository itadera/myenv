# myenv

1. initial setup for Ubuntu
```bash
sudo apt update && apt upgrade -y
sudo apt install -y git
ssh-keygen
```
1. install Nvidia driver

1.  select GPU (NVIDIA (Performance Mode))
`nvidia-settings` -> PRIME Profiles


1. copy and paste ssh pub key in github

2. clone this repository
```bash
git clone https://github.com/itadera/myenv
cd myenv
```
```
mkdir ~/ros/ros1/openhrc_ws
```


3. install docker
```
sh ./install_docker.sh
```

4. install nvidia container toolkit

```bash

4. start docker image as rocker
```
sh ./install-nvidia-container-toolkit.sh
```


3. build docker images
```
docker build ./docker/noetic/ -t myenv:noetic --no-cache
```



4. install Edge
go https://www.microsoft.com/en-us/edge/download

5. install vscode
go https://code.visualstudio.com/Download



