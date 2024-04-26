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

The version >= 8 of BORIS (currently v. {{ boris.version }}) is based on the [mpv media player](https://mpv.io/) instead of the VLC media player for version < 8.

Many improvements were made:

-   mpv is more reactive than VLC and allow to record events more precisely.
-   The frame-by-frame mode was greatly improved (frames are no more  extracted as image files on disk or memory)
-   A real-time events plot function was added (See Tools > Plot events   in real time)
-   The maximum play rate is 100x (instead of 30x)
-   Video equalizer with brightness, contrast, saturation, gamma and hue   parameter
-   Option for adding media and data files without absolute path but     relatively to the project file (the project will be easier to share)
-   Access to the BORIS ethogram repository
-   Undo function during events coding (with 25 levels, CTRL + Z /  Observations menu > Undo)
-   Coding from picture directories (for camera trap observations for example)
-   Frame index is displayed for the observations from video files.

The new version is totally compatible with the previous ones. The BORIS
project file format was not changed.

See the [User guide](https://www.boris.unito.it/user_guide/) for details and the [change log](https://github.com/olivierfriard/BORIS/wiki/BORIS-change-log-v.8).

Please test it and report the issues on
<https://github.com/olivierfriard/BORIS/issues>

See the [how to report a bug](report_a_bug.md) page.

Thank you for your collaboration.

## MacOS


As I have no access to a physical Mac computer the v.8 is not able to run under MacOS at the moment.

The Mac OS users have various possibilities to run BORIS v. 8, see the [BORIS for MacOS page](download_mac.md).
