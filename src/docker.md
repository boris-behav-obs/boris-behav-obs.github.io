---
hide:
  - navigation
  - toc
author:
- Olivier Friard
slug: |
  docker
status: |
  hidden
summary: |
  BORIS with Docker
title: BORIS with Docker
---

![Docker logo](/images/docker_logo.webp)

A Docker image with BORIS already installed is available.

## Install the BORIS Docker image


To install it, in a terminal, type:

    docker pull olivierfriard/boris:latest

## Launch BORIS from Docker


### Linux


in a terminal, type:

    SOCK=/tmp/.X11-unix
    XAUTH=/tmp/.docker.xauth
    xauth nlist $DISPLAY | sed -e 's/^..../ffff/' | xauth -f $XAUTH nmerge -
    chmod 777 $XAUTH
    docker run --rm -ti --net=host -e DISPLAY -v ${HOME}:/home/${USER} -w /home/${USER} -v $XSOCK:$XSOCK -v $XAUTH:$XAUTH -e XAUTHORITY=$XAUTH olivierfriard/boris




### MacOS


See the start\_macOS.command script on the [GitHub scripts
directory](https://github.com/olivierfriard/BORIS/tree/master/scripts)
