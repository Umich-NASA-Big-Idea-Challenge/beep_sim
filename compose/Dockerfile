# generated from docker_images_ros2/create_ros_image.Dockerfile.em
FROM osrf/ros:humble-desktop-jammy

# install ros2 packages
RUN apt-get update && apt-get install -y --no-install-recommends \
    ros-humble-desktop-full=0.10.0-1* \
    && rm -rf /var/lib/apt/lists/*

# install rviz2
RUN sudo apt install -y ros-humble-rviz2

WORKDIR /root/

# Install Gazebo Fortress
RUN sudo apt-get update
RUN sudo apt-get install lsb-release gnupg

RUN sudo curl https://packages.osrfoundation.org/gazebo.gpg --output /usr/share/keyrings/pkgs-osrf-archive-keyring.gpg
RUN echo "deb [arch=$(dpkg --print-architecture) signed-by=/usr/share/keyrings/pkgs-osrf-archive-keyring.gpg] http://packages.osrfoundation.org/gazebo/ubuntu-stable $(lsb_release -cs) main" | sudo tee /etc/apt/sources.list.d/gazebo-stable.list > /dev/null
RUN sudo apt-get update
RUN sudo apt-get install -y ignition-fortress

# Install other needed packages
RUN sudo apt install -y git
RUN sudo apt install -y python3
