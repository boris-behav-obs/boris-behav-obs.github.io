---
hide:
  - navigation
  - toc
author:
- Olivier Friard
slug: |
  run\_from\_source\_code
status: |
  hidden
summary: |
  Run BORIS from source code
title: Run BORIS from source code
---

## From the Python Package Index [PyPI](https://pypi.org/)

### Requirement


The minimal version of Python for running BORIS is **3.8**. Check the
Python version installed on your system with:

    python3 --version

Install the required packages following the instructions relative to
your distribution:

Example for Debian based distributions like Ubuntu, Kubuntu, Xubuntu ...:

For Debian 12 (Bookworm), open a terminal and type:

    su (your root password will be required)
    apt install mpv libmpv2 python3 ffmpeg graphviz

For Debian 11 (Bullseye), open a terminal and type:

    su (your root password will be required)
    apt install mpv libmpv1 python3 ffmpeg graphviz

For Ubuntu 20.04 or 22.04 and other Ubuntu like:

    sudo apt install mpv libmpv1 python3 ffmpeg graphviz
    (your password will be required)

For Ubuntu 23.04 or 23.10 and other Ubuntu like:

    sudo apt install mpv libmpv2 python3 ffmpeg graphviz
    (your password will be required)

It is recommended to create a Python virtual environment to do not
interfere with the Python modules installed on your system:

    python3 -m venv boris_virtual_env

Activate the virtual environment:

    source boris_virtual_env/bin/activate

Install BORIS with pip:

    python3 -m pip install boris-behav-obs

Launch BORIS:

    python3 -m boris

**Warning: additional libraries**

On **Ubuntu 20.04** it can be necessary to install the following
libraries:

    sudo apt install libxcb-xinerama0 libxcb-icccm4 libxcb-image0 libxcb-keysyms1 libxcb-render-util0 libxcb-xkb1 libxkbcommon-x11-0
    (your password will be required)

and create a symbolic link to the **libffi.so.7** library. Open a
terminal and type:

    sudo ln -s /usr/lib/x86_64-linux-gnu/libffi.so.7 /usr/lib/x86_64-linux-gnu/libffi.so.6
    (your root password will be required)

See the revision history for details:
<https://github.com/olivierfriard/BORIS/wiki/BORIS-revision-history>

If you want to report a bug, see the [how to report a
bug](report_a_bug.md) page.
