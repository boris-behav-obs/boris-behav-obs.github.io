---
hide:
  - navigation
  - toc
author:
- Olivier Friard
slug: |
  debian
status: |
  hidden
summary: |
  BORIS with Debian
title: 'Install BORIS v.{{ boris.version }} for Debian'
---

## Debian


### Debian 11 (Bullseye)

Download the [BORIS deb package 64-bit
v.{{ boris.version }}](https://github.com/olivierfriard/BORIS/releases/download/v{{ boris.version }}/boris_{{ boris.version }}-0.deb)
and use one of the following methods to install it.

### Debian 12 (Bookworm)

Download the [BORIS deb package 64-bit libmpv2
v.{{ boris.version }}](https://github.com/olivierfriard/BORIS/releases/download/v{{ boris.version }}/boris_{{ boris.version }}-0_libmpv2.deb)
and use one of the following methods to install it.



### Install BORIS with the Software Installer

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

### Bug report, feature request and discussion

See the [how to report a bug](report_a_bug.md) page.

[GitHub feature
request](https://github.com/olivierfriard/BORIS/issues/new?assignees=&labels=feature+request&template=feature_request.md&title=).

[Suggestions and general
discussion](https://github.com/olivierfriard/BORIS/discussions)

See the revision history for details:
<https://github.com/olivierfriard/BORIS/wiki/BORIS-change-log-v.8>


### Older Debian


Refer to the [Other Linux](other_linux.md) page


### Checksums

[What Is a Checksum?](https://en.wikipedia.org/wiki/Checksum)

[MD5](https://github.com/olivierfriard/BORIS/releases/download/v###VER###/md5sum.txt)  
[SHA1](https://github.com/olivierfriard/BORIS/releases/download/v###VER###/sha1sum.txt)  
[SHA256](https://github.com/olivierfriard/BORIS/releases/download/v###VER###/sha256sum.txt)  
