FROM osrf/ros:noetic-desktop-full

ARG DEBIAN_FRONTEND=noninteractive

RUN apt-get update && apt-get upgrade -y
RUN apt-get install -y git zsh wget curl terminator python3-catkin-tools
RUN apt-get clean && rm -rf /var/lib/apt/lists/*

# Default powerline10k theme, no plugins installed
RUN sh -c "$(wget -O- https://github.com/deluan/zsh-in-docker/releases/download/v1.1.5/zsh-in-docker.sh)"
# CMD [ "/bin/zsh" ]

# COPY setup_ws.sh /setup_ws.bash
# RUN chmod 777 /setup_ws.bash

# RUN apt-get update && rosdep update
# RUN /setup_ws.bash



# copy entrypoint
RUN rosdep update
COPY entrypoint.sh /entrypoint.sh
RUN chmod 777 /entrypoint.sh

# Path: docker/noetic/entrypoint.sh
ENTRYPOINT ["/entrypoint.sh"]
# ENTRYPOINT ["/bin/terminator"]
CMD [ "/bin/zsh" ]