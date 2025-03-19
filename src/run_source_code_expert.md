---
hide:
  - navigation
  - toc
author:
- Olivier Friard
title: 'BORIS from source code'
---



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



# Hard way

## Install the uv Python package manager


See [Installing uv](https://docs.astral.sh/uv/getting-started/installation/)

After installing uv you should close and re-open your terminal / Command prompt


## Create a new Python project

Open a terminal and type:

    uv init --python 3.12 BORIS
    cd BORIS
    uv add boris-behav-obs

To start BORIS:

    uv run boris-behav-obs


##  Start BORIS

To start again type once it is installed:

    cd BORIS
    uv run boris-behav-obs




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


## Debian 11 (Bullseye)

Download the [BORIS deb package 64-bit
v.{{ boris.version }}](https://github.com/olivierfriard/BORIS/releases/download/v{{ boris.version }}/boris_{{ boris.version }}-0.deb)
and use one of the following methods to install it.

## Debian 12 (Bookworm)

Download the [BORIS deb package 64-bit libmpv2
v.{{ boris.version }}](https://github.com/olivierfriard/BORIS/releases/download/v{{ boris.version }}/boris_{{ boris.version }}-0_libmpv2.deb)
and use one of the following methods to install it.



## Install BORIS with the Software Installer

Right-click on the .deb icon and click the "Open with Software Install" menu option.

You should find the icon for starting BORIS in the Education menu, you
do not need everything else.

If the **Software Installer** is not available you can install it:

In a terminal, type:

    su (you root password will be asked)
    apt install gnome-software



## Install BORIS with command-line (expert mode)

In a terminal, type:

    su (you root password will be asked)
    cd DIRECTORY_WHERE_DO_YOU_DOWNLOADED_BORIS_DEB

### Debian 11

type:

    apt install ./boris_{{ boris.version }}-0.deb

### Debian 12

type:

    apt install ./boris_{{ boris.version }}-0_libmpv2.deb

You should find the icon for starting BORIS in the **Education** menu,
you do not need everything else.


<!--

## Pre-release of BORIS

If you would like to contribute to the development of BORIS, you can use the pre-release and let me know if it works and what the critical issues are.
This version will not replace the current version and can be used in parallel. Thank you in advance for your help.


!!! danger "**IMPORTANT**"

    **Do not use this version for your research projects as it may contain critical errors.**


Download [BORIS PRE-RELEASE v. 9.0.5 libmpv2](https://github.com/olivierfriard/BORIS/releases/download/v9.0.5/boris_9.0.5-0_libmpv2.deb)


-->





### Bug report, feature request and discussion

See the [how to report a bug](report_a_bug.md) page.

[Request a feature](https://github.com/olivierfriard/BORIS/issues/new?assignees=&labels=feature+request&template=feature_request.md&title=).

[Suggestions and general
discussion](https://github.com/olivierfriard/BORIS/discussions)



{% include 'revision_history.md' %}


### Older Debian


Refer to the [Other Linux](other_linux.md) page


### Checksums


{% include 'checksums.md' %}
