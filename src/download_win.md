---
hide:
  - navigation
  - toc
author:
- Olivier Friard
title: 'BORIS for Microsoft-Windows'
---

![microsoft windows logo](images/windows_logo.svg)


# BORIS for Microsoft-Windows

#### Current version: v. **{{ boris.version }}** release date: {{ boris.release_date }}


Kindly acknowledge and properly cite this software and its authors when using the results in publications or other forms of dissemination:

{% include 'citation.md' %}

## General information

The [**user guide**](http://www.boris.unito.it/user_guide) is available, so take a look before asking ;-)

The **first** launch of BORIS (just after downloading/unzipping or
installing) can be long. So be patient (depending on your system it can
require 1 minute).


When you launch BORIS, it's typical to encounter a black window.
Don't worry; this is the Windows Command Prompt, and you don't need to interact with it directly ([more information](https://www.lifewire.com/command-prompt-2625840)).
Simply leave it open and proceed **without closing it**.




### BORIS for Windows Portable v.{{ boris.version }}


Download [BORIS for Windows 64-bit Portable
v.{{ boris.version }}](https://github.com/olivierfriard/BORIS/releases/download/v{{ boris.version }}/boris-{{ boris.version }}-win64.zip)

The portable version does **NOT** need installation and can also be
launched from an USB drive. Various BORIS versions may live together on
your computer. Just extract the archive and launch the
**start\_boris.bat** script.

A video tutorial for downloading and launching BORIS is available:
<https://youtu.be/oWs4e7iPy6I>



### BORIS for Windows Setup v.{{ boris.version }}

Download [BORIS for Windows 64-bit Setup v.{{ boris.version }}](https://github.com/olivierfriard/BORIS/releases/download/v{{ boris.version }}/boris-{{ boris.version }}-win64-setup.exe)

The default install path is located in your home directory (for example
c:\\users\\joe\\BORIS)


!!! warning "Important"

    Control that the install directory is empty. Otherwise you can would
    have issues with some features.
    See <https://github.com/olivierfriard/BORIS/issues/673> for details.



{% include 'revision_history.md' %}



### Pre-release of BORIS for Windows

If you would like to contribute to the development of BORIS, you can use the pre-release and let me know if it works and what the critical issues are.
This version will not replace the current version and can be used in parallel. Thank you in advance for your help.



!!! danger "**IMPORTANT**"

    **Do not use this version for your research projects as it may contain critical errors.**


Download [BORIS for Windows 64-bit Portable PRE-RELEASE v. 9.0.5](https://github.com/olivierfriard/BORIS/releases/download/v9.0.5/boris-9.0.5-win64.zip)





## Bug report, feature request and discussion

See the [how to report a bug](report_a_bug.md) page.

[Request a feature](https://github.com/olivierfriard/BORIS/issues/new?assignees=&labels=feature+request&template=feature_request.md&title=).

[Suggestions and general discussion](https://github.com/olivierfriard/BORIS/discussions)


## Checksums

{% include 'checksums.md' %}

