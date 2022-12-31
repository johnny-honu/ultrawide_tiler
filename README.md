# ultrawide_tiler

**by Johnny Honu (johnny.honu at gmail dot com)**

(December 31, 2022)

### DESCRIPTION

The *ultrawide\_tiler.sh* script is a bash script intended to facilitate window tiling on ultrawide displays. The *ultrawide\_tiler.sh* script is useful because it divides the Desktop into thirds and quarters instead of the typical halves used on smaller displays. The script resizes and moves the active window based on a user-initiated key press (keybinding, shortcut, hotkey). The resizing and movement of the window are determined by the script's filename, which acts as parameters that are passed to the script. Thus, changing the script filename changes how the script behaves. Multiple copies of the script, each with a different filename specifying the desired size and location of the active window, can be saved to the user's computer and mannually assigned to custom keybindings, thereby creating window tiling hotkeys and an entire tiling scheme.

### INSTALLATION

A tiling scheme for ultrawide displays is suggested below. To assist in setting up this scheme, an installer script, titled *ultrawide_tiler_installer.sh*, is available for use.

Simply download and run the installer. The installer will automatically create individual tiling scripts in the user's $HOME/.keybindings/ directory. A $HOME/.keybindings/ directory will be created by the installer if it does not already exist.

After running the installer, you will need to manually bind each tiling script to a custom shortcut (aka keybinding or hotkey). Suggestions for shortcut keystrokes are provided below.

### SUGGESTED ULTRAWIDE TILING SCHEME

The following table provides a suggested tiling scheme for ultrawide displays. These are only suggestions; you are free to create any tiling shortcuts you wish simply by copying and renaming the *ultrawide\_tiler.sh* script and attaching it to a custom keybinding in your desktop environment.

:warning: **Warning:** Some keybindings listed here may conflict with existing keybindings already programmed in your desktop environment. For example, in Linux Mint Cinnamon, Meta+C may already be assigned to the Cinnamon Calendar applet and may need to be disabled in the applet for the custom shortcut to work. Similarly, Meta+Space in Linux Mint Cinnamon may conflict with a Keyboard Layout Option and may need to be turned off for custom tiling to work. 

:bulb: **Tip:** Most terminal emulator windows do not resize to specific pixel dimensions, but rather to row heights and column widths based on the emulator's font type and size. As such, most terminal emulators will resize to slightly smaller dimensions than those calculated in this script, thus leaving gaps at some edges. The "Konsole" terminal emulator by KDE is an exception and will resize correctly using pixel dimensions.

|Desktop Grid<br>(CxR)|Window Origin<br>(X,Y)|Window Size<br>(WxH)|Diagram|Filename|Suggested<br>Keybinding|
|:---:|:---:|:---:|:---:|:---:|:---:|
|3x1|1,1|1x1|:black_large_square: :white_large_square: :white_large_square:|3-1-1-1-1-1.sh|Meta+KP4|
|3x1|2,1|1x1|:white_large_square: :black_large_square: :white_large_square:|3-1-2-1-1-1.sh|Meta+KP5|
|3x1|3,1|1x1|:white_large_square: :white_large_square: :black_large_square:|3-1-3-1-1-1.sh|Meta+KP6|
|3x2|1,1|1x1|:black_large_square: :white_large_square: :white_large_square:<br>:white_large_square: :white_large_square: :white_large_square:|3-2-1-1-1-1.sh|Meta+KP7|
|3x2|1,2|1x1|:white_large_square: :white_large_square: :white_large_square:<br>:black_large_square: :white_large_square: :white_large_square:|3-2-1-2-1-1.sh|Meta+KP1|
|3x2|2,1|1x1|:white_large_square: :black_large_square: :white_large_square:<br>:white_large_square: :white_large_square: :white_large_square:|3-2-2-1-1-1.sh|Meta+KP8|
|3x2|2,2|1x1|:white_large_square: :white_large_square: :white_large_square:<br>:white_large_square: :black_large_square: :white_large_square:|3-2-2-2-1-1.sh|Meta+KP2|
|3x2|3,1|1x1|:white_large_square: :white_large_square: :black_large_square:<br>:white_large_square: :white_large_square: :white_large_square:|3-2-3-1-1-1.sh|Meta+KP9|
|3x2|3,2|1x1|:white_large_square: :white_large_square: :white_large_square:<br>:white_large_square: :white_large_square: :black_large_square:|3-2-3-2-1-1.sh|Meta+KP3|
|4x1|1,1|1x1|:black_large_square: :white_large_square: :white_large_square: :white_large_square:|4-1-1-1-1-1.sh|Meta+A<br>Meta+Ctrl+A<br>Meta+Ctrl+KP4|
|4x1|2,1|1x1|:white_large_square: :black_large_square: :white_large_square: :white_large_square:|4-1-2-1-1-1.sh|Meta+S|
|4x1|2,1|2x1|:white_large_square: :black_large_square: :black_large_square: :white_large_square:|4-1-2-1-2-1.sh|Meta+Ctrl+S<br>Meta+Ctrl+D<br>Meta+Ctrl+KP5|
|4x1|3,1|1x1|:white_large_square: :white_large_square: :black_large_square: :white_large_square:|4-1-3-1-1-1.sh|Meta+D|
|4x1|4,1|1x1|:white_large_square: :white_large_square: :white_large_square: :black_large_square:|4-1-4-1-1-1.sh|Meta+F<br>Meta+Ctrl+F<br>Meta+Ctrl+KP6|
|4x2|1,1|1x1|:black_large_square: :white_large_square: :white_large_square: :white_large_square:<br>:white_large_square: :white_large_square: :white_large_square: :white_large_square:|4-2-1-1-1-1.sh|Meta+Q<br>Meta+Ctrl+Q<br>Meta+Ctrl+KP7|
|4x2|1,2|1x1|:white_large_square: :white_large_square: :white_large_square: :white_large_square:<br>:black_large_square: :white_large_square: :white_large_square: :white_large_square:|4-2-1-2-1-1.sh|Meta+Z<br>Meta+Ctrl+Z<br>Meta+Ctrl+KP1|
|4x2|2,1|1x1|:white_large_square: :black_large_square: :white_large_square: :white_large_square:<br>:white_large_square: :white_large_square: :white_large_square: :white_large_square:|4-2-2-1-1-1.sh|Meta+W|
|4x2|2,1|2x1|:white_large_square: :black_large_square: :black_large_square: :white_large_square:<br>:white_large_square: :white_large_square: :white_large_square: :white_large_square:|4-2-2-1-2-1.sh|Meta+Ctrl+W<br>Meta+Ctrl+E<br>Meta+Ctrl+KP8|
|4x2|2,2|1x1|:white_large_square: :white_large_square: :white_large_square: :white_large_square:<br>:white_large_square: :black_large_square: :white_large_square: :white_large_square:|4-2-2-2-1-1.sh|Meta+X|
|4x2|2,2|2x1|:white_large_square: :white_large_square: :white_large_square: :white_large_square:<br>:white_large_square: :black_large_square: :black_large_square: :white_large_square:|4-2-2-2-2-1.sh|Meta+Ctrl+X<br>Meta+Ctrl+C<br>Meta+Ctrl+KP2|
|4x2|3,1|1x1|:white_large_square: :white_large_square: :black_large_square: :white_large_square:<br>:white_large_square: :white_large_square: :white_large_square: :white_large_square:|4-2-3-1-1-1.sh|Meta+E|
|4x2|3,2|1x1|:white_large_square: :white_large_square: :white_large_square: :white_large_square:<br>:white_large_square: :white_large_square: :black_large_square: :white_large_square:|4-2-3-2-1-1.sh|Meta+C|
|4x2|4,1|1x1|:white_large_square: :white_large_square: :white_large_square: :black_large_square:<br>:white_large_square: :white_large_square: :white_large_square: :white_large_square:|4-2-4-1-1-1.sh|Meta+R<br>Meta+Ctrl+R<br>Meta+Ctrl+KP9|
|4x2|4,2|1x1|:white_large_square: :white_large_square: :white_large_square: :white_large_square:<br>:white_large_square: :white_large_square: :white_large_square: :black_large_square:|4-2-4-2-1-1.sh|Meta+V<br>Meta+Ctrl+V<br>Meta+Ctrl+KP3|

### TECHNICAL DETAILS FOR FILENAMING

The tiling script is flexible and can be used to create a variety of interesting tiling schemes. However, for the tiling script to work properly, the following filenaming convention must followed: C-R-W-H-X-Y.sh. Example filenames are provided in the table above.

- C is the number of equal-size columns into which to divide the Desktop. C must be a positive integer.

- R is the number of equal-size rows into which to divide the Desktop. R must be a positive integer.

Together, C and R define the **Desktop Grid**. A grid that is 4 columns wide by 3 rows high is said to be a 4x3 grid. Each cell in the grid represents a tile where a window can be placed. And each tile's location can be identified by its column and row number. For example, the tile in the second column (counting left to right) and third row (counting top to bottom) is said to be located at the coordinate position 2,3.

- X is the desired column where the upper left corner the window will reside. X must be a positive integer less than or equal to C.

- Y is the desired row where the upper left corner of the window will reside. Y must be a positive integer less than or equal to R.

Together, X and Y define the desired **Window Origin**. For windows that occupy only one tile, the window origin is the X,Y coordinate location of that tile.  For windows that occupy more than one tile, the window origin is the X,Y coordinate of the cell occupied by the upper left corner of the window.

- W is the desired width (in grid tiles) of the resized window. W must be a positive integer less than or equal to C.

- H is the desired height (in grid tiles) of the resized window. H must be a positive integer less than or equal to R.

Together, W and H define the desired **Window Size**. A window can occupy one tile or multiple adjacent tiles. For example, if a window is to be 1 tile wide by 2 tiles high, the window size is 1x2.

### DEPENDENCIES

This script depends on: wmctrl, xdotool, and xprop.

This script is written for the X11; it does not work in Wayland.

### GNU LICENSE
This file is part of *ultrawide_tiler*.

*ultrawide_tiler* is free software: you can redistribute it and/or modify it under the terms of the GNU General Public License as published by the Free Software Foundation, either version 3 of the License, or (at your option) any later version.

*ultrawide_tiler* is distributed in the hope that it will be useful, but WITHOUT ANY WARRANTY; without even the implied warranty of MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE. See the GNU General Public License for more details.

You should have received a copy of the GNU General Public License along with this program. If not, see <https://www.gnu.org/licenses/>.

Copyright 2022 Johnny Honu 
