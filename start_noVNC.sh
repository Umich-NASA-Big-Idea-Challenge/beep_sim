# !bin/bash
docker pull theasp/novnc:latest
docker run -it --rm --net=ros --env="DISPLAY_WIDTH=2800" --env="DISPLAY_HEIGHT=1300" --env="RUN_XTERM=no" --name=novnc -p=8080:8080 theasp/novnc:latest