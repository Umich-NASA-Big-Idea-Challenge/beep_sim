# !bin/bash
docker pull theasp/novnc:latest
docker run -it --rm --net=ros --env="DISPLAY_WIDTH=1400" --env="DISPLAY_HEIGHT=850" --env="RUN_XTERM=no" --name=novnc -p=8080:8080 theasp/novnc:latest