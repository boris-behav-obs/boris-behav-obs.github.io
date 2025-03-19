---
hide:
  - navigation
  - toc
author:
- Olivier Friard
title: Install BORIS from source code
---


BORIS is available on the official Python Package Index: [BORIS PyPI package](https://pypi.org/project/boris-behav-obs)



# Requirements


BORIS requires the installation of:

* the [mpv video player library](https://www.mpv.io) (libmpv1 or libmpv2)

* the [FFmpeg](https://www.ffmpeg.org) framework

* the [GraphViz](https://graphviz.org/) tool (Optional)


## Install requirements for Debian based distributions


Example for Debian based distributions like Ubuntu, Kubuntu, Xubuntu, Linux Mint ...

Open a terminal and type,

for Debian:

    su (your root password will be required)
    apt install libmpv2 ffmpeg graphviz libxcb-cursor0

for Ubuntu, Linux Mint:

    sudo apt install libmpv2 ffmpeg graphviz libxcb-cursor0
    (your root password will be required)



## Install requirements for Microsoft-Windows

Open a command prompt and type:

    winget install ffmpeg
    winget install Graphviz.Graphviz



# Install and run BORIS


## Linux

Open a terminal and type:

    wget -qO- http://www.boris.unito.it/static/boris.sh | sh 


## Microsoft-Windows

To be continued...




BORIS will launch, do **not** close the terminal whhile BORIS is running.





!!! Warning "Additional libraries"
   

    On **Ubuntu 20.04** it can be necessary to install the following libraries:

        sudo apt install libxcb-xinerama0 libxcb-icccm4 libxcb-image0 libxcb-keysyms1 libxcb-render-util0 libxcb-xkb1 libxkbcommon-x11-0
        (your password will be required)

    and create a symbolic link to the **libffi.so.7** library. Open a terminal and type:

        sudo ln -s /usr/lib/x86_64-linux-gnu/libffi.so.7 /usr/lib/x86_64-linux-gnu/libffi.so.6
        (your root password will be required)


{% include 'revision_history.md' %}


If you want to report a bug, see the [how to report a bug](report_a_bug.md) page.
