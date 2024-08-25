---
hide:
  - navigation
  - toc
author:
- Olivier Friard
summary: |
  BORIS v.8 (MPV based)
title: BORIS v.8 (based on the mpv media player)
---

Starting from version 8 (currently v. {{ boris.version }}), BORIS uses the mpv media player instead of VLC, which was used in versions prior to 8.


Many improvements were made:

-   mpv is more responsive than VLC, enabling more precise event recording.

-   The frame-by-frame mode was greatly improved (frames are no more  extracted as image files on disk or memory)

-   A real-time events plot function was added (See Tools > Plot events   in real time)

-   The maximum play rate is 100x (instead of 30x)

-   Video equalizer with brightness, contrast, saturation, gamma and hue   parameter

-   Option for adding media and data files without absolute path but     relatively to the project file (the project will be easier to share)

-   Access to the BORIS ethogram repository

-   Undo function during events coding (with 25 levels, CTRL + Z /  Observations menu > Undo)

-   Coding from picture directories (for camera trap observations for example)

-   Frame index is displayed for the observations from video files.


The new version is fully compatible with previous ones, as the BORIS project file format remains unchanged.


See the [User guide](https://www.boris.unito.it/user_guide/) for details and the [change log](https://github.com/olivierfriard/BORIS/wiki/BORIS-change-log-v.8).


## MacOS

BORIS v.8 is **not** available for MacOS, see the [BORIS for MacOS page](download_mac.md) for details.
