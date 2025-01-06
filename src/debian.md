---
hide:
  - navigation
  - toc
author:
- Olivier Friard
title: 'BORIS for Debian'
---


#### Current version: v. **{{ boris.version }}** release date: {{ boris.release_date }}



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



### Install BORIS with command-line (expert mode)

In a terminal, type:

    su (you root password will be asked)
    cd DIRECTORY_WHERE_DO_YOU_DOWNLOADED_BORIS_DEB

#### Debian 11

type:

    apt install ./boris_{{ boris.version }}-0.deb

#### Debian 12

type:

    apt install ./boris_{{ boris.version }}-0_libmpv2.deb

You should find the icon for starting BORIS in the **Education** menu,
you do not need everything else.




## Pre-release of BORIS

If you would like to contribute to the development of BORIS, you can use the pre-release and let me know if it works and what the critical issues are.
This version will not replace the current version and can be used in parallel. Thank you in advance for your help.


!!! danger "**IMPORTANT**"

    **Do not use this version for your research projects as it may contain critical errors.**


Download [BORIS for Windows 64-bit Portable PRE-RELEASE v. 9.0.0 libmpv2](https://github.com/olivierfriard/BORIS/releases/download/v9.0.0/boris_9.0.0-0_libmpv2.deb)








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
