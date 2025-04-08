---
author:
- Olivier Friard
summary: |
  Features
title: Features
hide:
  - navigation
  - toc
---


* **Coding of video and audio files**

    * integrated playback at various speeds (from x0.1 to x100).
    * up to 8 media files can be synchronously played.
    *  a time offset parameter allows to synchronize all players.
    * media can be enqueued (the recorded time will be the cumulative time over all queued media files)
    * frame-by-frame mode (forward and backward).


* **Event logging for live observations**

    * with the desktop program or the [BORIS App for Android](download_android.md)




*   **Coding from picture directories** (for camera trap observations
    for example)

   

*  **Unlimited number of [behaviors](screenshots/040_ethogram.jpg)**.

    *  behaviors can be defined as **State events** (with duration)           or **Point events** (no duration)
    *   can be organized in [behavioral categories](screenshots/150_behavioral_categories.jpg).


*    **Unlimited number of modifiers for each behavior**.

    * various types are available: **single selection**, **multiple          selection**, **numeric** or from **external values**
    * can be organized in an unlimited number of sets.


*    **Unlimited number of [subjects](screenshots/050_subjects.jpg)**.

    *    the focal subject selection can be made from a [Subjects pad](screenshots/160_subjects_pad.jpg) (useful for touch screens but not only).



*    **Unlimited number of [independent variables](screenshots/110_independent_variables.jpg)**.

    *    various types are available: **text**, **numeric**,  **timestamp** or **set of values**




*   **Exclusion matrix for mutually exclusive behaviors definition**



*    The behavior coding can be done with keyboard, mouse, by using a  [behaviors coding map](screenshots/060_behaviors_coding_map.jpg) or a [coding pad](screenshots/080_behaviors_coding_pad.jpg)     (for touch screens)



*  **[External data visualization](screenshots/011_observation_with_external_data.jpg)** from plain text files (TSV, CSV \...).

    *   Native or [custom converters](screenshots/200_converter_writing.jpg)
        can be used for converting external data timestamp in seconds.


*   **[Sound spectrogram and waveform visualization](screenshots/140_spectrogram.jpg)**

*     **[Geometric measurements](screenshots/100_geometric_measurements.jpg)**

    *   (mark, distance, area and angle).

*   **Coefficient of inter-rater reliability** ([IRR](https://en.wikipedia.org/wiki/Inter-rater_reliability)):

    * [Cohen's Kappa](https://en.wikipedia.org/wiki/Cohen%27s_kappa).

*    **[Transition matrix](screenshots/490_transition_matrix.jpg)**

*  **[Flow diagram](screenshots/510_flow_diagram.jpg)**

    * The [GraphViz](http://www.graphviz.org/) program is required.

*    Coded events can be exported in various formats for further analysis:

    *  Plain text formats (TSV, CSV and HTML)
    *  Spreadsheets (Open Document ODS, Microsoft-Excel XLSX and XLS)
    *  Pandas and R dataframes
    *  Structured Query Language (SQL)
    *  SDIS for analysis with the [GSEQ](http://www2.gsu.edu/~psyrab/gseq/index.html) program.
    *  [Praat TextGrid](http://www.fon.hum.uva.nl/praat/manual/TextGrid.html)
    *  Behavioral strings for analysis with [Behatrix](http://www.boris.unito.it/pages/behatrix) or other tools.
    *  JWatcher

* **Time budget analysis**

    * Various time budget formats are available:

        *  [Time   budget](screenshots/180_time_budget.jpg)
        * Time budget by behavioral category
        * [Synthetic time budget](screenshots/170_synthetic_time_budget.jpg).
        * Synthetic time budget with time bin

    * Results can be exported in various formats:

        * Plain text formats (TSV, CSV, HTML)
        *  Spreadsheets (Open Document, Microsoft-Excel XLSX   and XLS)
        * Pandas and R dataframes

* **[Graphical representation of coded data](screenshots/120_plot_events.jpg)**

    *  The plots can be exported in various formats to be included in scientific presentations:

        *   [SVG format](http://en.wikipedia.org/wiki/Svg)
        *  Portable Document Format (PDF)
        *  Postscript (PS or EPS)
        *  Portable Network Graphics (PNG)
        *  JPEG
        *  Tagged Image File Format (TIFF)

*   [Video equalizer](screenshots/105_video_equalizer.jpg) with brightness, contrast, saturation, gamma and hue parameter.

*  Extract frames or video sequences from video files (corresponding to the coded events)

*   Media files utilities: Re-size / re-encode, rotate and merge.

*   Creation of video subtitles based on coded events and subjects

*   Run on [small devices](screenshots/600_raspberry_pi_4_1.jpg)

*   Use of open format for storing data (JSON) to allow further analysis

*    Import of Global Definition File from [JWatcher](http://www.jwatcher.ucla.edu/)

*   Import of OTX/OTB template files from [Noldus The Observer XT](https://www.noldus.com/human-behavior-research/products/the-observer-xt)
