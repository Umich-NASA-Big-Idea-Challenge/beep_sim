# !bin/bash

docker network rm ros
docker volume rm nasa

docker rm roscore
docker image rm theasp/novnc:latest
docker image rm ros-gazebo-desktop