---
hide:
  - navigation
  - toc
author:
- Olivier Friard
slug: |
  download\_mac
status: |
  hidden
summary: |
  BORIS Download page Mac
title: Download BORIS for MacOS
---

![macOS logo](images/mac-os.svg){width="72px"}

## Download BORIS for MacOS

Please acknowledge and cite the use of this software and its authors when results are used in publications or published elsewhere:

{% include 'citation.md' %}



### General information


**BORIS v.{{ boris.version }} is not yet available for MacOS**

If you want to run v.{{ boris.version }} on your MacOS you have various possibilities:

-   [Switch to another OS](https://itsfoss.com/why-use-linux/)


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