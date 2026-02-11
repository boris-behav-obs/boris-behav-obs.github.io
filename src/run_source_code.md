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



=== "Ubuntu, Kubuntu, Lubuntu, Ubuntu Mate, Xubuntu, Linux Mint, Raspberry OS ..."

    Open a terminal and type: (1)
    { .annotate }


    1.  If you do not know how to open a terminal,
        see [Ubuntu terminal](https://www.howtogeek.com/686955/how-to-launch-a-terminal-window-on-ubuntu-linux)
        or
        [Linux Mint terminal](https://linuxways.net/mint/how-to-open-a-terminal-in-linux-mint)


    ``` sh
    sudo apt install libmpv2 ffmpeg graphviz libxcb-cursor0 libopenblas-dev

    # your password will be required
    ```

=== "Arch Linux, Manjaro ..."


    Open a terminal and type: (1)
    { .annotate }


    1.  If you do not know how to open a terminal,
        see [Arch terminal](https://www.howtogeek.com/686955/how-to-launch-a-terminal-window-on-ubuntu-linux)

    ``` sh
    sudo pacman -Syu
    sudo pacman -S libmpv ffmpeg graphviz
    
    # your password will be required
    ```




=== "Debian, "

    Open a terminal and type:

    ``` sh
    su
    # your root password will be required

    apt install libmpv2 ffmpeg graphviz libxcb-cursor0 libopenblas-dev
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

=== "MacOS"

    Install **Homebrew** if not already installed from https://brew.sh

    Open a terminal and type: (1)
    { .annotate }

    1.  If you do not know how to open a terminal,
        see [Open a terminal](https://support.apple.com/guide/terminal/open-or-quit-terminal-apd5265185d-f365-44cb-8b09-71a064a42125/mac  )




    ``` sh
    brew install mpv ffmpeg pkg-config cmake gfortran openblas
    ```




# Run BORIS


## Install the uv Python package and project manager from [Astral](https://docs.astral.sh/uv/getting-started/installation/)

[uv](https://docs.astral.sh/uv/) is an "An extremely fast Python package and project manager, written in Rust" and has more than 70K starts on [GitHub](https://github.com/astral-sh/uv)

## Launch BORIS

=== "Linux"

    Open a terminal and type: (1)
    { .annotate }


    1.  If you do not know how to open a terminal,
        see [Ubuntu terminal](https://www.howtogeek.com/686955/how-to-launch-a-terminal-window-on-ubuntu-linux)
        or
        [Linux Mint terminal](https://linuxways.net/mint/how-to-open-a-terminal-in-linux-mint)



=== "Microsoft Windows"

    Open a command prompt or a PowerShell and type: (1)
    { .annotate }

    1.  If you do not know how to open a command prompt,
        see [Open a command prompt](https://www.howtogeek.com/235101/10-ways-to-open-the-command-prompt-in-windows-10        )


=== "MacOS"

    Open a terminal and type: (1)
    { .annotate }

    1.  If you do not know how to open a command prompt,
        see [Open a terminal](https://support.apple.com/guide/terminal/open-or-quit-terminal-apd5265185d-f365-44cb-8b09-71a064a42125/mac  )


  ``` sh
  uvx boris-behav-obs
  ```




BORIS will launch, do **not** close the terminal while BORIS is running.






# Test a pre-release of BORIS

If you'd like to help with BORIS development, you can test a pre-release version and report any bugs you encounter.


Check if pre-releases are available on [Python Package Index (PyPI)](https://pypi.org/project/boris-behav-obs/#history).


Launch the pre-release version:

=== "Linux"

    Open a terminal and type: (1)
    { .annotate }


    1.  If you do not know how to open a terminal,
        see [Ubuntu terminal](https://www.howtogeek.com/686955/how-to-launch-a-terminal-window-on-ubuntu-linux)
        or
        [Linux Mint terminal](https://linuxways.net/mint/how-to-open-a-terminal-in-linux-mint)



=== "Microsoft Windows"

    Open a command prompt or a PowerShell and type: (1)
    { .annotate }

    1.  If you do not know how to open a command prompt,
        see [Open a command prompt](https://www.howtogeek.com/235101/10-ways-to-open-the-command-prompt-in-windows-10        )


=== "MacOS"

    Open a terminal and type: (1)
    { .annotate }

    1.  If you do not know how to open a terminal,
        see [Open a terminal](https://support.apple.com/guide/terminal/open-or-quit-terminal-apd5265185d-f365-44cb-8b09-71a064a42125/mac  )


``` sh
uvx --prerelease allow boris-behav-obs
```

By default, the latest pre-release is launched. If no pre-releases are available, the current stable version of BORIS is used instead.

To force the use of a specific pre-release, run:

``` sh
uvx --prerelease allow boris-behav-obs==x.y.z
```







{% include 'revision_history.md' %}


If you want to report a bug, see the [how to report a bug](report_a_bug.md) page.
