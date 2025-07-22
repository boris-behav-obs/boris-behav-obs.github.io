---
hide:
  - navigation
  - toc
author:
- Olivier Friard
title: 'BORIS for Linux'
---

![Tux Linux logo](images/tux_128px.png){width="64px"}

# BORIS for Linux

#### Current version: v. {{ boris.version }} release date: {{ boris.release_date }}

Kindly acknowledge and properly cite this software and its authors when using the results in publications or other forms of dissemination:

{% include 'citation.md' %}




## Requirements


BORIS requires the installation of:

* the [mpv video player library](https://www.mpv.io) (libmpv1 or libmpv2)

* the [FFmpeg](https://www.ffmpeg.org) framework

* the [GraphViz](https://graphviz.org/) tool (Optional)


=== "Ubuntu, Linux Mint"

    Open a terminal and type: (1)
    { .annotate }


    1.  If you do not know how to open a terminal,
        see [Ubuntu terminal](https://www.howtogeek.com/686955/how-to-launch-a-terminal-window-on-ubuntu-linux)
        or
        [Linux Mint terminal](https://linuxways.net/mint/how-to-open-a-terminal-in-linux-mint)


    ``` sh
    sudo apt install libmpv2 ffmpeg graphviz libxcb-cursor0 

    # your password will be required 
    ```



=== "Debian"

    Open a terminal and type:

    ``` sh
    su
    # your root password will be required

    apt install libmpv2 ffmpeg graphviz libxcb-cursor0
    ```






## Run BORIS

#### Download the [BORIS AppImage 64-bit v.{{ boris.version }}](https://github.com/olivierfriard/BORIS/releases/download/v{{ boris.version }}/BORIS-{{ boris.version }}-x86_64.AppImage)


#### Make it executable (1) { .annotate }

1.  See a complete [AppImage guide](https://itsfoss.com/use-appimage-linux)



#### Run it with a double-click



This AppImage should run on recent versions of Linux. It was tested on the following distributions:

* Ubuntu 20.10+

* Debian12+

* Linux Mint 21+

* Linux Mint Debian Edition 6



If the AppImage cannot be launched on your Linux distribution/version try to [run BORIS from source code](run_source_code.md)

<!--
## ![Ubuntu logo](https://upload.wikimedia.org/wikipedia/commons/thumb/9/94/Ubuntu_logoib.svg/240px-Ubuntu_logoib.svg.png){width="64px"} [Ubuntu](ubuntu.md)


## ![Linux Mint logo](images/linux_mint_logo.svg){width="68px"} [Linux Mint](ubuntu.md)


## ![Debian logo](https://upload.wikimedia.org/wikipedia/commons/thumb/6/66/Openlogo-debianV2.svg/194px-Openlogo-debianV2.svg.png){width="56px"} [Debian](debian.md)


## ![Linux Lite logo](https://www.linuxliteos.com/assets/img/home/lite-news.png){width="80px"} [Linux Lite](linux_lite.md)

-->





