#!/bin/sh

container=jm-hm-ubuntu

sudo xhost +local:`sudo docker inspect --format='{{ .Config.Hostname }}' ${container}`

sudo docker run \
    -e DISPLAY=$DISPLAY \
    -v /tmp/.X11-unix:/tmp/.X11-unix \
    -v ${HOME}:/hosthome \
    -w /workspace \
    --privileged \
    -it ${container}
