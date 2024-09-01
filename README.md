# beep_sim

You need docker installed to run this sim

these files are meant to run on your local computer

Clone the repo and open a command line in the repo

Run inital_setup.sh this should only need to be run once on your computer unless the setup is changed.

run start_noVNC.sh this terminal needs to stay open
this file starts a noVNC container that allows you to view the sim in browser if you have issues with the size of the visualization you can adjust it in the file

open another terminal in the repo and run start_sim.sh

You are now inside the docker container. This is the terminal you will run commands in to start the sim. (IMPORTANT anything not in the root dir will be lost if you close this terminal or exit out of the container. You start in the root dir so this only matters if you leave it)

if you need multiple terminals connected to the container you can run

docker exec -it g-ros bash

keep in mind that if you close the one you ran the start command in they will all disconnect 

you should be able to view the sim at http://localhost:8080/vnc.html

for how to actually run the sim see: https://github.com/Umich-NASA-Big-Idea-Challenge/gazebo_beep

