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



=== "Ubuntu and Ubuntu flavors, Linux Mint, Raspberry Pi OS ..."

    Open a terminal (1) and type:
    { .annotate }


    1.  See [Open the Ubuntu terminal](https://www.howtogeek.com/686955/how-to-launch-a-terminal-window-on-ubuntu-linux)
        or
        [Open the Linux Mint terminal](https://linuxways.net/mint/how-to-open-a-terminal-in-linux-mint)


    ``` sh
    sudo apt install libmpv2 ffmpeg graphviz libxcb-cursor0 

    # your password will be required
    ```

    BORIS was successfully tested on Ubuntu 20.10+



=== "Arch Linux, Manjaro ..."


    Open a terminal and type: 
    { .annotate }


    ``` sh
    sudo pacman -Syu
    sudo pacman -S libmpv ffmpeg graphviz
    
    # your password will be required
    ```




=== "Debian"

    Open a terminal and type:

    ``` sh
    su
    # your root password will be required

    apt install libmpv2 ffmpeg graphviz libxcb-cursor0 libopenblas-dev
    ```

    
    BORIS was successfully tested on Debian 12+




=== "Microsoft Windows"

    Open a PowerShell or a command prompt (1) and type: 
    { .annotate }

    1.  See [Open PowerShell](https://www.howtogeek.com/662611/9-ways-to-open-powershell-in-windows-10) or
        [Open a command prompt](https://www.howtogeek.com/235101/10-ways-to-open-the-command-prompt-in-windows-10)
        

    ``` sh
    winget install ffmpeg
    winget install Graphviz.Graphviz
    ```

    !!! Note

        **winget** (Windows Package Manager) is a command-line tool for installing, updating, configuring, and managing software on Windows.





=== "macOS"

    Install **Homebrew** if not already installed from [https://brew.sh](https://brew.sh)

    Open a terminal (1) and type: 
    { .annotate }

    1.  See [Open a terminal on macOS](https://support.apple.com/guide/terminal/open-or-quit-terminal-apd5265185d-f365-44cb-8b09-71a064a42125/mac  )



    ``` sh
    brew install mpv ffmpeg pkg-config cmake gfortran openblas
    ```

    !!! Note
    
        [**Homebrew**](https://brew.sh/) is "The Missing Package Manager for macOS (or Linux)"


# Run BORIS


## Install the uv Python package and project manager from [Astral](https://docs.astral.sh/uv/getting-started/installation/)

[uv](https://docs.astral.sh/uv/) is "an extremely fast Python package and project manager, written in Rust" and has more than 79K stars on [GitHub](https://github.com/astral-sh/uv)



=== "Linux and macOS"

    Open a terminal (1) and type: 
    { .annotate }

    1.  
        See [Open an Ubuntu terminal](https://www.howtogeek.com/686955/how-to-launch-a-terminal-window-on-ubuntu-linux)
        ,
        [Open a Linux Mint terminal](https://linuxways.net/mint/how-to-open-a-terminal-in-linux-mint)
        or
        [Open a macOS terminal](https://support.apple.com/guide/terminal/open-or-quit-terminal-apd5265185d-f365-44cb-8b09-71a064a42125/mac  )

    ``` sh
    wget -qO- https://astral.sh/uv/install.sh | sh
    source $HOME/.local/bin/env
    ```

    or
    
    ``` sh
    curl -LsSf https://astral.sh/uv/install.sh | sh
    source $HOME/.local/bin/env
    ```



=== "Microsoft Windows"

    Open a PowerShell or a command prompt (1) and type: 
    { .annotate }

    1.  See [Open PowerShell](https://www.howtogeek.com/662611/9-ways-to-open-powershell-in-windows-10) or
        [Open a command prompt](https://www.howtogeek.com/235101/10-ways-to-open-the-command-prompt-in-windows-10)
        


    ```
    powershell -ExecutionPolicy ByPass -c "irm https://astral.sh/uv/install.ps1 | iex"
    ```


## Launch BORIS

=== "Linux"

    Open a terminal (1) and type: 
    { .annotate }

    1. See [Open the Ubuntu terminal](https://www.howtogeek.com/686955/how-to-launch-a-terminal-window-on-ubuntu-linux)
        or
        [Open the Linux Mint terminal](https://linuxways.net/mint/how-to-open-a-terminal-in-linux-mint)

    



=== "Microsoft Windows"

    Open a PowerShell or a command prompt (1) and type: 
    { .annotate }

    1.  See [Open PowerShell](https://www.howtogeek.com/662611/9-ways-to-open-powershell-in-windows-10) or
        [Open a command prompt](https://www.howtogeek.com/235101/10-ways-to-open-the-command-prompt-in-windows-10)



=== "macOS"

    Open a terminal (1) and type:
    { .annotate }

    1.  See [Open a terminal on macOS](https://support.apple.com/guide/terminal/open-or-quit-terminal-apd5265185d-f365-44cb-8b09-71a064a42125/mac  )




``` sh
uvx boris-behav-obs@latest
```




BORIS will launch, do **not** close the terminal while BORIS is running.






# Test a pre-release of BORIS

If you'd like to help with BORIS development, you can test a pre-release version and report any bugs you encounter.


Check if pre-releases are available on [Python Package Index (PyPI)](https://pypi.org/project/boris-behav-obs/#history).


Launch the pre-release version:

=== "Linux"

    Open a terminal (1) and type: 
    { .annotate }


    1.  See [Open the Ubuntu terminal](https://www.howtogeek.com/686955/how-to-launch-a-terminal-window-on-ubuntu-linux)
        or
        [Open the Linux Mint terminal](https://linuxways.net/mint/how-to-open-a-terminal-in-linux-mint)

    ``` sh
    uvx --prerelease allow boris-behav-obs@latest
    ```



=== "Microsoft Windows"

    Open a PowerShell or a command prompt (1) and type: 
    { .annotate }

    1.  See [Open PowerShell](https://www.howtogeek.com/662611/9-ways-to-open-powershell-in-windows-10) or
        [Open a command prompt](https://www.howtogeek.com/235101/10-ways-to-open-the-command-prompt-in-windows-10)

    ``` sh
    uvx --prerelease allow boris-behav-obs@latest
    ```


=== "macOS"

    Open a terminal (1) and type:
    { .annotate }

    1.  See [Open a terminal on macOS](https://support.apple.com/guide/terminal/open-or-quit-terminal-apd5265185d-f365-44cb-8b09-71a064a42125/mac)

    ``` sh
    uvx --prerelease allow boris-behav-obs@latest
    ```

By default, the latest pre-release is launched. If no pre-releases are available, the current stable version of BORIS is used instead.

To force the use of a specific pre-release, run:

``` sh
uvx --prerelease allow boris-behav-obs==x.y.z
```







{% include 'revision_history.md' %}


If you want to report a bug, see the [how to report a bug](report_a_bug.md) page.
