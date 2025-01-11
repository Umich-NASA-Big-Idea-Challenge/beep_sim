# !bin/bash

docker build -t ros-gazebo-desktop .
docker run -it -v nasa:/root --rm --name g-ros --net=ros --env="DISPLAY=novnc:0.0" --env="ROS_MASTER_URI=http://roscore:11311" ros-gazebo-desktop bash