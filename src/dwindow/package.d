// Written in the D programming language.

/**
This module is just to simplify import of most useful DWINDOW modules.

Synopsis:

----

import dwindow;

----

Copyright: Vadim Lopatin, 2014
License:   Boost License 1.0
Authors:   Vadim Lopatin, coolreader.org@gmail.com

 */


module dwindow;

public {
    import dwindow.core.config;

    // some useful imports from Phobos
    import std.algorithm : equal;
    import std.conv : to;
    import std.utf : toUTF32, toUTF8;
}
