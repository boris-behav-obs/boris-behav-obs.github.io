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


## Install requirements


Example for Debian based distributions like Ubuntu, Kubuntu, Xubuntu, Linux Mint ...


=== "Ubuntu, Linux Mint, Raspberry OS"

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

=== "Microsoft Windows"

    Open a command prompt or a PowerShell and type: (1)
    { .annotate }

    1.  If you do not know how to open a command prompt,
        see [Open a command prompt](https://www.howtogeek.com/235101/10-ways-to-open-the-command-prompt-in-windows-10        )


    ``` sh
    winget install ffmpeg
    winget install Graphviz.Graphviz
    ```

    !!! Note

        **winget** (Windows Package Manager) is a command-line tool for installing, updating, configuring, and managing software on Windows. 





# Run BORIS


## Install the uv Python package and project manager from Astral

See https://docs.astral.sh/uv/getting-started/installation/


## Launch BORIS

=== "Linux"

    Open a terminal and type: (1)
    { .annotate }


    1.  If you do not know how to open a terminal,
        see [Ubuntu terminal](https://www.howtogeek.com/686955/how-to-launch-a-terminal-window-on-ubuntu-linux)
        or
        [Linux Mint terminal](https://linuxways.net/mint/how-to-open-a-terminal-in-linux-mint)


    ``` sh
    uvx boris-behav-obs
    ```

=== "Microsoft Windows"

    Open a command prompt or a PowerShell and type: (1)
    { .annotate }

    1.  If you do not know how to open a command prompt,
        see [Open a command prompt](https://www.howtogeek.com/235101/10-ways-to-open-the-command-prompt-in-windows-10        )

    ``` sh
    uvx boris-behav-obs
    ```







BORIS will launch, do **not** close the terminal while BORIS is running.





!!! Warning "Additional libraries"
   

    On **Ubuntu 20.04** it can be necessary to install the following libraries:

        sudo apt install libxcb-xinerama0 libxcb-icccm4 libxcb-image0 libxcb-keysyms1 libxcb-render-util0 libxcb-xkb1 libxkbcommon-x11-0
        (your password will be required)

    and create a symbolic link to the **libffi.so.7** library. Open a terminal and type:

        sudo ln -s /usr/lib/x86_64-linux-gnu/libffi.so.7 /usr/lib/x86_64-linux-gnu/libffi.so.6
        (your root password will be required)


{% include 'revision_history.md' %}


If you want to report a bug, see the [how to report a bug](report_a_bug.md) page.
