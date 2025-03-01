# beep_sim

## PreReq
You need docker installed to run this sim

## Setup
these files are meant to run on your local computer

Clone the repo and open a command line in the repo

#### initial_setup.sh
Run initial_setup.sh this should only need to be run once on your computer unless the setup is changed.

## Startup

#### start_noVNC.sh
run start_noVNC.sh this terminal needs to stay open

this file starts a noVNC container that allows you to view the sim in browser if you have issues with the size of the visualization you can adjust it in the file

#### start_sim.sh
open another terminal in the repo and run start_sim.sh

You are now inside the docker container. This is the terminal you will run commands in to start the sim. (IMPORTANT anything not in the root dir will be lost if you close this terminal or exit out of the container. You start in the root dir so this only matters if you leave it)

keep in mind that if you close the one you ran the start command in they will all disconnect 

if you need multiple terminals connected to the container you can run

docker exec -it g-ros bash
in a new terminal

## Use
you should be able to view the sim at http://localhost:8080/vnc.html

for how to actually run the sim see: https://github.com/Umich-NASA-Big-Idea-Challenge/gazebo_beep

## Shutdown
ctrl-c the vnc terminal

type exit in the terminal you first ran start_sim.sh in

All of the data in the root dir will be saved and the containers will stop

## TearDown
if you are done using the sim on your computer or want a fresh install 

run DANGER_DELETE.sh 

this should remove everything that docker downloaded as well as delete the root dir of the container so make sure you have pushed EVERYTHING you will not get it back

