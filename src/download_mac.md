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


**BORIS v.{{ boris.version }} is not yet available for MacOS.**

<!--
This situation is not due to the very restrictive Apple's policy, as described in the article "[Sideloading is a best cybercriminal's best friend](https://arstechnica.com/gadgets/2021/11/apples-federighi-delivers-dramatic-speech-on-dangers-of-sideloading/)", but rather due to a technical issue.
-->

This situation is not due to the very restrictive Apple's policy, but rather due to a technical issue.

After switching to mpv (previously, the VLC media player was used until version 8), I have been unable to obtain a functioning libmpv library in order to run BORIS on MacOS.
The fact of not having access to a physical computer with macOS, but only to virtual machines, makes solving the problem more difficult.
All contributions for compiling and using this library are welcome.


If you want to run v.{{ boris.version }} on your MacOS you have various possibilities:

- [Install a dual boot system](https://www.makeuseof.com/tag/install-linux-macbook-pro) 
([Why use Linux](https://itsfoss.com/why-use-linux/))


-   Use [UTM](https://mac.getutm.app) a virtual machine host based on
    QEMU to run Linux or Windows as guest OS on your Mac.


-   Use [Virtualbox](https://www.virtualbox.org) to run Linux or Windows
    as guest OS on your Mac (free and open-source software). A Linux
    virtual machine with BORIS installed is available. See [Linux virtual machine](virtual_machine.md)

-   Use [Parallels® Desktop for
    Mac](https://www.parallels.com/products/desktop) (proprietary
    software) (Take care to extract the BORIS archive in the Windows
    file system  (_c:\Users\Bob_ for example)


-   [Boot Camp Assistant](https://support.apple.com/guide/bootcamp-assistant/welcome/mac)


-   [Running GUI Linux in a virtual machine on a
    Mac](https://developer.apple.com/documentation/virtualization/running_gui_linux_in_a_virtual_machine_on_a_mac)



-   A docker image is available at <https://hub.docker.com/r/olivierfriard/boris> (see the
    [start_macOS.command](https://github.com/olivierfriard/BORIS/blob/master/scripts/start_macOS.command) script)


{% include 'revision_history.md' %}


The last version of BORIS that is running natively on MacOS is [7.13.9](https://github.com/olivierfriard/BORIS/releases/tag/v7.13.9).
This version is 2 years old and is no longer maintained. [Many bugs were fixed](https://github.com/olivierfriard/BORIS/wiki/BORIS-change-log-v.8) and [features were added](version8.md) in the current version.
Please note that issues will only be accepted if you are using the latest version.