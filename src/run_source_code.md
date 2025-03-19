---
hide:
  - navigation
  - toc
author:
- Olivier Friard
title: Install and run BORIS from the Python Package Index (PyPI)
---

[BORIS PyPI package](https://pypi.org//project/boris-behav-obs)

### Requirement


The minimal version of Python for running BORIS is **3.10**.


#### Check the Python version installed on your system

Open a terminal and type:

    python3 -V

You should obtain a string like:

    Python 3.10


If your Python version is 3.10 or higher, BORIS will run without issues. However, if your Python version is lower, BORIS will not be compatible.



#### Installation

Install the required packages following the instructions relative to your Linux distribution:

Example for Debian based distributions like Ubuntu, Kubuntu, Xubuntu, Linux Mint ...:




For Debian 11 (Bullseye), open a terminal and type:

    su (your root password will be required)
    apt install mpv libmpv1 python3 ffmpeg graphviz python3-venv


For Debian 12 (Bookworm), open a terminal and type:

    su (your root password will be required)
    apt install mpv libmpv2 python3 ffmpeg graphviz python3-venv



For Ubuntu 22.04 (Jammy Jellyfish) / Linux Mint 21:

    sudo apt install mpv libmpv1 python3 ffmpeg graphviz python3-venv
    (your password will be required)




for Ubuntu 23.04 (Lunar Lobster) and newer / Linux Mint 22 and newer

    sudo apt install mpv libmpv2 python3 ffmpeg graphviz python3-venv
    (your password will be required)



#### Creation of the Python virtual environment

It is strongly recommended to create a Python virtual environment to prevent interference with the modules installed on your system:

    python3 -m venv boris_venv

The Python virtual environment will be created in your home directory.  
However, you have the option to create it in a different directory if you prefer.:

    python -m venv <PATH>


where <PATH\> is the directory where do you want to create the virtual environment


#### Activation of the virtual environment

    source boris_venv/bin/activate

or

    source <PATH>/bin/activate
 

#### Installation of BORIS with pip

    pip install pip --upgrade
    pip install boris-behav-obs




### Launch BORIS

Open a terminal and type:

    boris_venv/bin/boris

or

    <PATH>/bin/boris


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
