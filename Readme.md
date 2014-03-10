RapiD's Vim Configurations And Plugins
======================================

>   This is my own vim configurations along with some plugins
>
>   You can copy, modify and use it freely, without any restricts

Snapshot
--------
![Snapshot](https://github.com/rapidhere/myvim-conf/blob/master/snapshot.png?raw=true)

Files
-----
*   `.vimrc` is the vimrc file, please put it under your `$HOME` dir.

*   `.vim`is a bundle of vim plugins, color schemas and syntax dicts, please put it under your `$HOME` dir.

Usages
------
*   `Ctrl-t` open/close the tag bar
*   `Ctrl-o` open new file with `NERDTree` plugin
*   `Ctrl-b` open the buffer explorer
*   `Ctrl-Left` last buffer
*   `Ctrl-right` next buffer
*   `Ctrl-d` explore current menu
*   `Ctrl-F9` run `make`

Language Specified Shortcuts
----------------------------
###C/C++ (usually for acm coding)
*   `F9` compile with `-Wall -g`
*   `F8` open gdb
*   `F7` run the excutable
*   `F4` cat the code to the screen and copy the c/cpp file into the clip board.

###Python
*   `F9` run current python file
*   `F8` use `pep8` to lint the code. Please install `pep8` first.
*   `F4` same as C/C++'s `F4`

###Javascript
*   `F9` use `JSHint` plugin to lint the code
*   `F7` use `node` to run the file
*   `F4` same as C/C++'s `F4`

###Java
*   `F9` complie the java file with `-Xlint:deprecation`
*   `F7` run the file
*   `F4` same as C/C++'s `F4`

###Jade Template
*   `F9` complie the template into html
*   `F8` remove complied html file
*   `F7` view the complied html file with `vsplit`

###Less
*   `F9` complie the less file

Common Problems
---------------
###The Powerline plugin display mess chars
This is due to you haven't install the `fancy` font that Powerline needed.

1.  You can find the specify font under `.vim/bundle/vim-powerline/fontpatcher/PowerlineSymbols-Powerline.otf`.Install the font and you can fix the bug.
2.  If last snippet doesn't work, you can modify the config of Powerline in `.vimrc`.Change the `Powerline_symbols`(On line 14) into `compatible` or `unicode`.
3.  If all of above doesn't work, you can read the doc of Powerline in `.vim/bundle/vim-powerline/doc/Powerline.txt`

###The Color Schema is so ugly
The color isn't same as the snapshot?

*   This is maybe your terminal isn't 256 Color.

*   Or the theme has been chosen as `Light` in color schema mango. You can force mango shema to use desired `Dark` theme by change the `.vim/colors/mango.vim`. At line 8, Change the `let bgcolor = &background` into `let bgcolor = "Dark"`
