---
hide:
  - navigation
  - toc
author:
- Olivier Friard
title: BORIS for MacOS
---

![macOS logo](images/mac-os.svg){width="72px"}


Please acknowledge and cite the use of this software and its authors when results are used in publications or published elsewhere:

{% include 'citation.md' %}




# General information


**An EXPERIMENTAL version of BORIS  is available for MacOS (v.{{ boris.version }}).**

The author would like to thank [dsanmiguel](https://github.com/dsanmiguel) for his initial work on making BORIS run on macOS.
Most of the following material was written by him.

Please report any issues or caveats related to the installation or use of BORIS on macOS.
See the [how to report a bug](report_a_bug.md) page


!!! danger "**EXTREMELY IMPORTANT**"

    This is an **experimental** version and BORIS is distributed **WITHOUT ANY WARRANTY**.

    Please remember that it is extremely important to regularly back up your project files to prevent data loss.
    While software can be reinstalled, your data might be lost forever if not properly backed up.
    Use an external drive and/or a cloud service for your backups.
    Include a timestamp in the file name to avoid overwriting previous backups (e.g., my_project.YYYY-MM-DD.boris).



## Notes / caveats on macOS Support before installing

On Linux and Windows, BORIS embeds mpv (the media player [web site](https://mpv.io/)) directly into the Qt interface using the libmpv render API.

Unfortunately, on macOS this is not yet possible because:
- Apple does not provide native OpenGL beyond version 4.1, and is deprecating it in favor of Metal.
- mpv’s embedded render API (vo=libmpv) only supports OpenGL, not Vulkan or Metal.
- mpv’s newer GPU backends (vo=gpu, vo=gpu-next) do support Metal/Vulkan through libplacebo and MoltenVK, but those only work in mpv’s own floating window — they cannot currently be embedded inside a Qt widget.

Because of this limitation, this macOS version of BORIS uses a **floating mpv window** launched alongside the BORIS GUI. This allows full scoring and analysis functionality, but the video window is separate rather than integrated.
When upstream mpv (or libplacebo) adds Vulkan/Metal support to the render API, integration inside the Qt window on macOS may become possible.

Therefore the wrapper has mpv open alongside BORIS so it is **VERY IMPORTANT to click on the BORIS window** to score as usual. BORIS is aware of the floating mpv window and will keep track of appropriate time elapsed.


## How to install and run on MacOS

### Install homebrew if not already installed from [https://brew.sh](https://brew.sh)

Homebrew is "The Missing Package Manager for macOS" and has more then 45K starts on [GitHub](https://github.com/Homebrew/brew).


### Install FFmpeg with Homebrew

[FFmpeg](https://ffmpeg.org/) is "a complete, cross-platform solution to record, convert and stream audio and video."

Open a macOS Terminal and type (or paste): (1)
{ .annotate }

1.  If you do not know how to open a terminal,
    see [macOS terminal](https://support.apple.com/guide/terminal/open-or-quit-terminal-apd5265185d-f365-44cb-8b09-71a064a42125/mac)


`brew install ffmpeg`


### Install mpv with Homebrew

[mpv](https://mpv.io/) is "a free, open source, and cross-platform media player".

Open a macOS Terminal and type (or paste): (1)
{ .annotate }

1.  If you do not know how to open a terminal,
    see [macOS terminal](https://support.apple.com/guide/terminal/open-or-quit-terminal-apd5265185d-f365-44cb-8b09-71a064a42125/mac)


`brew install --HEAD mpv`

### 3) Symlink libmpv to to /usr/local/lib

Open a macOS Terminal and type (or paste): (1)
{ .annotate }

1.  If you do not know how to open a terminal,
    see [macOS terminal](https://support.apple.com/guide/terminal/open-or-quit-terminal-apd5265185d-f365-44cb-8b09-71a064a42125/mac)

`sudo ln -s /opt/homebrew/lib/libmpv.dylib /usr/local/lib/libmpv.dylib`

When the password will be required, enter the password of your profile.


***Why symlink?***
Python’s ctypes and many C-based Python packages like [mpv](https://pypi.org/project/mpv/) don’t use Homebrew’s paths (/opt/homebrew/lib) unless explicitly told to. Instead, they search system library paths such as:

*	/usr/lib
*	/usr/local/lib


### 4) Install the uv Python package and project manager from [Astral](https://docs.astral.sh/uv/getting-started/installation/)

[uv](https://docs.astral.sh/uv/) is an "An extremely fast Python package and project manager, written in Rust" and has more than 70K starts on [GitHub](https://github.com/astral-sh/uv)

### 5) Install and launch BORIS with uvx

Open a macOS Terminal and type (or paste): (1)
{ .annotate }

1.  If you do not know how to open a terminal,
    see [macOS terminal](https://support.apple.com/guide/terminal/open-or-quit-terminal-apd5265185d-f365-44cb-8b09-71a064a42125/mac)

`uvx boris-behav-obs`


The next time you want to launch BORIS just open a terminal and type the command:


`uvx boris-behav-obs`


To launch a specific version of BORIS:

`uvx boris-behav-obs==9.6.6`





Remember that it is **VERY IMPORTANT to click on the BORIS window** to score your media file otherwise the key press will **NOT** be recorded.









<!--
This situation is not due to the very restrictive Apple's policy, but rather due to a technical issue.

After switching to mpv (previously, the VLC media player was used until version 8), I have been unable to obtain a functioning libmpv library in order to run BORIS on MacOS.
The fact of not having access to a physical computer with macOS, but only to virtual machines, makes solving the problem more difficult.
All contributions for compiling and using this library are welcome.


If you want to run v.{{ boris.version }} on your MacOS you have various possibilities.

For Mac computers with [Apple Silicon](https://support.apple.com/en-us/116943):

- Use [VMWARE Fusion](https://drive.google.com/file/d/19DJJRuRmeUv6vYz1GYUax8SVLeTXbZsh/view?usp=sharing) to run a virtual machine. A
    [Microsoft-Windows 11 virtual machine](https://drive.google.com/file/d/1A-jr8Up4x6p6pNk6B3ikVS2DflbStx-x/view?usp=drive_link) is available with BORIS already installed (password for encrypted volume: **h2MZZR+Ln7ZFVVh6** - Windows 11 credentials: **user/user**).


-   Use [Parallels® Desktop for Mac](https://www.parallels.com/products/desktop) (proprietary software).
     Take care to extract the BORIS archive in the Windows file system  _c:\Users\Bob_ for example)


For Mac computers with Intel:


- [Install a dual boot system](https://www.makeuseof.com/tag/install-linux-macbook-pro)
([Why use Linux](https://itsfoss.com/why-use-linux/))



- Use [UTM](https://mac.getutm.app) a virtual machine host based on
    QEMU to run Linux or Windows as guest OS on your Mac.


-   Use [Virtualbox](https://www.virtualbox.org) to run Linux or Windows
    as guest OS on your Mac (free and open-source software). A Linux
    virtual machine with BORIS installed is available. See [Linux virtual machine](virtual_machine.md)

-   Use [Parallels® Desktop for Mac](https://www.parallels.com/products/desktop) (proprietary software).
     Take care to extract the BORIS archive in the Windows file system  _c:\Users\Bob_ for example)


-   [Boot Camp Assistant](https://support.apple.com/guide/bootcamp-assistant/welcome/mac)


-   [Running GUI Linux in a virtual machine on a
    Mac](https://developer.apple.com/documentation/virtualization/running_gui_linux_in_a_virtual_machine_on_a_mac)



-   A docker image is available at <https://hub.docker.com/r/olivierfriard/boris> (see the
    [start_macOS.command](https://github.com/olivierfriard/BORIS/blob/master/scripts/start_macOS.command) script)


{% include 'revision_history.md' %}


The last version of BORIS that is running natively on MacOS is [7.13.9](https://github.com/olivierfriard/BORIS/releases/tag/v7.13.9).
This version is 2 years old and is no longer maintained. [Many bugs were fixed](https://github.com/olivierfriard/BORIS/wiki/BORIS-change-log-v.8) and [features were added](version8.md) in the current version.
Please note that issues will only be accepted if you are using the latest version.
-->

## Some points of reflection on the use of the macOS operating system in research

* [Apple Removes Ability to Run Unsigned Apps in macOS 15.1](https://lunduke.locals.com/post/6304352/apple-removes-ability-to-run-unsigned-apps-in-macos-15-1)

* [EU to Apple: "Let Users Choose Their Software"; Apple: "Nah"](https://www.eff.org/deeplinks/2024/10/eu-apple-let-users-choose-their-software-apple-nah)

* ["Sideloading is a cyber criminal’s best friend"](https://www.theverge.com/2021/11/3/22761724/apple-craig-federighi-ios-sideloading-web-summit-2021-european-commission-digital-markets-act)
