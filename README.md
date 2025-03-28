# beep_sim

## PreReq
You need docker installed to run this sim

## Setup
these files are meant to run on your local computer

Clone the repo and open a command line in the repo

inside the compose folder run

```bash
docker compose pull
docker pull osrf/ros:humble-desktop-jammy
```

this will download the needed software

## Startup

inside the compose folder run 
```bash
docker compose up
```
**keep this terminal open** if you close it you will end the sim

### Git
if you have ssh authentication with github setup on your computer you can link it to the container to make your life easier and autodownload need files as well as making it easier to push to github. to link it run
```bash
source forward_ssh.sh
```
before running
```bash
docker compose up
```
like normal

If you don't have this setup or don't care ignore any git messages that print at startup

### Volume
a folder called ***volume*** will appear inside the compose folder this is where the container stores the data. **Do not edit it directly** you should only edit it from inside the container. 

## Connecting to the container
to connect a terminal to docker run the following in a new terminal
```bash
docker exec -it g-ros bash
```

you can run this in multiple terminals to get multiple connections

if you have the **remote explorer** extension in vscode you should have an option to view dev containers and connect vscode to the container to work inside of it

### IMPORTANT
Only files inside the root folder will be saved when you close the sim so keep that in mind

## Using the Sim
you should be able to view the sim at http://localhost:8080/vnc.html

for how to actually run the sim see: https://github.com/Umich-NASA-Big-Idea-Challenge/gazebo_beep

## Shutdown
***ctrl-c*** the compose terminal

All of the data in the root dir will be saved and the containers will stop

run 
```bash
docker compose down 
```
if you want to make sure any changes to the docker files are reflected next time you start it as it will force the files to rebuild when you startup again. This won't delete anything from the volume.

It can also lower the amount of room docker is taking up if that matters to you

## TearDown
if you are done using the sim (like forever or at least a while) on your computer or want a fresh install I recommend deleting everything docker installed as ros and gazebo take up a lot of space

these commands will git rid of all of the containers and images docker downloaded

```bash
docker compose down 
sh clear_images.sh
```

The above command will not delete your volume though if you want to do that you can simply delete the volume folder inside this repo

this should remove everything that docker downloaded
to check these commands could be helpful
```bash
docker image ls
    
docker ps

docker network ls

docker volume ls

```
