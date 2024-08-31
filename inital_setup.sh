# !bin/bash

docker network create ros
docker volume create nasa

docker run -d --net=ros --name roscore osrf/ros:humble-desktop-full roscore