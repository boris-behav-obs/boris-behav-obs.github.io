---
hide:
  - navigation
  - toc
author:
- Olivier Friard
summary: |
  BORIS for Linux Lite
title: 'Install BORIS for Linux Lite'
---

## Linux Lite

BORIS was tested on Linux Lite 6.6.

Download the [BORIS deb package 64-bit v.{{ boris.version }}](https://github.com/olivierfriard/BORIS/releases/download/v{{ boris.version }}/boris_{{ boris.version }}-0.deb)
and use one of the following methods to install it.



### Install BORIS with the GDebi Package Installer

Right-click on the .deb icon and click the "Open with GDebi Package Installer" menu option.

You should find the icon for starting BORIS in the Education menu, you do not need everything else.

If the **GDebi Package Installer** is not available you can install it:

In a terminal, type:

    sudo apt install gdebi-core gdebi
    (your user password will be asked)


### Install BORIS with command-line (expert mode)

In a terminal, type:

    cd DIRECTORY_WHERE_DO_YOU_DOWNLOADED_BORIS_DEB
    sudo apt install ./boris_{{ boris.version }}-0.deb


You should find the icon for starting BORIS in the **Education** menu, you do not need everything else.



### Bug report, feature request and discussion

See the [how to report a bug](report_a_bug.md) page.

[GitHub feature
request](https://github.com/olivierfriard/BORIS/issues/new?assignees=&labels=feature+request&template=feature_request.md&title=).

[Suggestions and general
discussion](https://github.com/olivierfriard/BORIS/discussions)



{% include 'revision_history.md' %}




### Checksums

{% include 'checksums.md' %}