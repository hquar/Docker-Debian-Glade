#!/bin/bash
xhost + &&\
docker run -it --rm --name Glade \
        -h "Glade" \
        -e DISPLAY=$DISPLAY \
        -v /tmp/.X11-unix:/tmp/.X11-unix:rw \
        -v $(pwd):/workspace \
        hquar/deb/glade-in-a-box:latest \
        bash \
        ;
