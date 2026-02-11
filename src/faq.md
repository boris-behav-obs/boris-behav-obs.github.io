---
hide:
  - navigation
  - toc
---


# I love BORIS! Is there a way I can participate in its development?

You can give a [star](https://github.com/olivierfriard/BORIS) to the BORIS GitHub repository.

You can also:

* [test a pre-release of BORIS](run_source_code.md#test-a-pre-release-of-boris)

* make a [pull request](https://github.com/olivierfriard/BORIS/pulls) with new features.

* write a [plugin](https://www.boris.unito.it/user_guide/analysis/#plugins)

* ...

# I do not like BORIS!

You can use another software like **Noldus Observer XT**, **ELAN**, **Mangold Interact** ...



# What is the BORIS version I am using?

Menu Help > About > Show details for versions of dependencies.


# The function XYZ is not working


Use the **Check project integrity** function (Projects > Check project integrity) to verify if your project contains any errors.
If errors are found, please fix them and then retry the XYZ function.


# My BORIS project file is corrupted and BORIS does not open it


!!! danger "**EXTREMELY IMPORTANT**"

    Please remember that it is extremely important to regularly back up your project files to prevent data loss.  
    While software can be reinstalled, your data might be lost forever if not properly backed up.  
    Use an external drive and/or a cloud service for your backups.  
    Include a timestamp in the file name to avoid overwriting previous backups (e.g., my_project.YYYY-MM-DD.boris).




The BORIS project file is in JSON format (<https://en.wikipedia.org/wiki/JSON>).
If your corrupted project file is not empty, you can open it with a text editor like Notepad++,
Pluma, TextEdit, etc. (not Microsoft Word or LibreOffice Writer, which are word processors) and try to repair it.

Another possibility is to use an on-line JSON validator like <https://jsonformatter.org> and try to repair it.




# BORIS crashes when I load a video and does not generate any error message

Set the **MPV player hardware video decoding** option to **No**. See Project > Preferences




# One or more widgets (ethogram, subject's list, event's list ...) are not visible during the observation


Right-click on the menu bar and reactivate the widget visualization.

If it does not work, close BORIS and delete the BORIS configuration file.

After this you will have to reset all the parameters of Preferences (File > Preferences)

See the [user guide](http://www.boris.unito.it/user_guide/various/#configuration-files)
for the name and location of the configuration file on your system.



# My video does not play (well) with BORIS


To be used with BORIS, your video must play well with the [mpv media player](https://mpv.io) because BORIS uses the MPV library.
The mpv library is embedded in BORIS executable versions (except for Linux, where you have to install the libmpv package).

If your video does not play with mpv, you can try to re-encode it.

You can use the embedded tool in BORIS. See **Tools > Re-encode/resize video** and the [user guide](http://www.boris.unito.it/user_guide/tools/#re-encoding-and-resizing-a-video-file)

For more parameters you can directly use the [FFmpeg framework](https://www.ffmpeg.org).
Various graphic interfaces are available:
[QWinFF](http://qwinff.github.io),
[HandBrake](https://handbrake.fr) ...

If your video plays with mpv and not in BORIS, you can contact me and send me your video.



# I am using an old version of Windows and BORIS does not launch


If you are using an old version of Windows (<10) and have problems
launching BORIS, you have to install the **Update for Universal C Runtime in Windows**. See <https://support.microsoft.com/en-us/kb/2999226>.


# I am using Ubuntu 20.04 and BORIS does not launch


On **Ubuntu 20.04** it can be necessary to install the following libraries:

Open a terminal and type:

``` sh
sudo apt install libxcb-xinerama0 libxcb-icccm4 libxcb-image0 libxcb-keysyms1 libxcb-render-util0 libxcb-xkb1 libxkbcommon-x11-0
```

(your password will be required)

and create a symbolic link to the **libffi.so.7** library. Open a terminal and type:

``` sh
sudo ln -s /usr/lib/x86_64-linux-gnu/libffi.so.7 /usr/lib/x86_64-linux-gnu/libffi.so.6
```

(your root password will be required)


# Can BORIS automatically track my animals/individuals/objects?


**No.** For this feature you have to use a video tracking software like
[Ethovision XT](http://www.noldus.com/animal-behavior-research/products/ethovision-xt)
(R) from Noldus, [Traktor](https://github.com/vivekhsridhar/tracktor),
[idtracker.ai](https://idtracker.ai) ...

You can also check my new project at a very early stage of development
[DORIS](https://github.com/olivierfriard/DORIS).



# Why is this program called BORIS?


It is a tribute to [Boris Vian](https://en.wikipedia.org/wiki/Boris_Vian)
