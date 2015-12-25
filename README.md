# dwindow
D language cross-platform window creation, OpenGL context initialization, event system and font support

Based on DlangUI code.

Stripped out platform, window and font management functionality for using in applications when no widgets are needed.

Supported platforms
===================

Windows: Win32 API or SDL2
Linux: SDL2 or X11
OSX: SDL2 or X11



Windows development using VisualD
---------------------------------

Install GIT, DUB, DMD, MS Visual Studio (e.g. Community 2013) + VisualD plugin


In some folder, clone dwindow repository

        git clone https://github.com/buggins/dwindow.git

Enter dlangui directory

        cd dwindow

Clone dependency libraries to dlangui/deps directory

        mkdir deps
        cd deps
        git clone https://github.com/DerelictOrg/DerelictUtil.git
        git clone https://github.com/DerelictOrg/DerelictGL3.git
        git clone https://github.com/DerelictOrg/DerelictFT.git
        git clone https://github.com/DerelictOrg/DerelictSDL2.git

Open solution file with Visual-D

        dwindow-visuald.sln

Try running examples: helloworld

