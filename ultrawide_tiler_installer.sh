#! /bin/bash

# ultrawide_tiler_installer.sh
# Johnny Honu (johnny.honu at gmail dot com)
# December 31,2022

script_name=(3-1-1-1-1-1.sh
3-1-2-1-1-1.sh
3-1-3-1-1-1.sh
3-2-1-1-1-1.sh
3-2-2-1-1-1.sh
3-2-3-1-1-1.sh
3-2-1-2-1-1.sh
3-2-2-2-1-1.sh
3-2-3-2-1-1.sh
4-1-1-1-1-1.sh
4-1-2-1-1-1.sh
4-1-3-1-1-1.sh
4-1-4-1-1-1.sh
4-1-2-1-2-1.sh
4-2-1-1-1-1.sh
4-2-2-1-1-1.sh
4-2-3-1-1-1.sh
4-2-4-1-1-1.sh
4-2-1-2-1-1.sh
4-2-2-2-1-1.sh
4-2-3-2-1-1.sh
4-2-4-2-1-1.sh
4-2-2-1-2-1.sh
4-2-2-2-2-1.sh)

for i in ${script_name[@]}; do

cat <<'EOF' > "$HOME/.keybindings/$i"
#! /bin/bash

# Name: ultrawide_tiler.sh
# Dependencies: wmctrl, xdotool, and xprop
# Notice: this script is written for the X Window System; it does not work in Wayland.

# READ PARAMETERS FROM SCRIPT NAME
IFS=- read -r grid_w grid_h win_x win_y win_w win_h < <(basename -s .sh $0)

# GET DESKTOP GEOMETRY
read -r -a desktop_array < <(wmctrl -d | grep '*')
desktop_x=${desktop_array[7]%,*}
desktop_y=${desktop_array[7]#*,}
desktop_w=${desktop_array[8]%x*}
desktop_h=${desktop_array[8]#*x}

# GET WINDOW FRAME GEOMETRY
read -r -a frame_array < <(xprop -id $(xdotool getactivewindow) | grep _NET_FRAME_EXTENTS)
frame_w=$((${frame_array[2]/,/}+${frame_array[3]/,/}))
frame_h=$((${frame_array[4]/,/}+${frame_array[5]}))

# CALCULATE NEW X-ORIGIN
((x=desktop_w/grid_w*(win_x-1)))
((x_add=win_x-1))
[[ $x_add -gt $w_mod ]] && ((x_add=w_mod))
((x+=x_add))

# CALCULATE NEW Y-ORIGIN
((y=desktop_h/grid_h*(win_y-1)))
((y_add=win_y-1))
[[ $y_add -gt $h_mod ]] && ((y_add=h_mod))
((y+=y_add))

# CALCULATE NEW WIDTH
((w=desktop_w/grid_w*win_w-frame_w-1))
((w_mod=desktop_w%grid_w))
((w_add=w_mod-win_x+1))
[[ $w_add -lt 0 ]] && w_add=0
[[ $w_add -gt $win_w ]] && ((w_add=win_w))
((w+=w_add))

# CALCULATE NEW HEIGHT
((h=desktop_h/grid_h*win_h-frame_h-1))
((h_mod=desktop_h%grid_h))
((h_add=h_mod-win_y+1))
[[ $h_add -lt 0 ]] && h_add=0
[[ $h_add -gt $win_h ]] && ((h_add=win_h))
((h+=h_add))

# RESIZE AND MOVE WINDOW
wmctrl -r :ACTIVE: -e 0,${x},${y},${w},${h}

# GNU LICENSE
# This file is part of ultrawide_tiler.
# ultrawide_tiler is free software: you can redistribute it and/or modify it under the terms of the GNU General Public License as published by the Free Software Foundation, either version 3 of the License, or (at your option) any later version.
# ultrawide_tiler is distributed in the hope that it will be useful, but WITHOUT ANY WARRANTY; without even the implied warranty of MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE. See the GNU General Public License for more details.
# You should have received a copy of the GNU General Public License along with this program. If not, see <https://www.gnu.org/licenses/>.
# Copyright 2022 Johnny Honu
EOF

chmod 755 "$HOME/.keybindings/$i"

done

# GNU LICENSE
# This file is part of ultrawide_tiler.
# ultrawide_tiler is free software: you can redistribute it and/or modify it under the terms of the GNU General Public License as published by the Free Software Foundation, either version 3 of the License, or (at your option) any later version.
# ultrawide_tiler is distributed in the hope that it will be useful, but WITHOUT ANY WARRANTY; without even the implied warranty of MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE. See the GNU General Public License for more details.
# You should have received a copy of the GNU General Public License along with this program. If not, see <https://www.gnu.org/licenses/>.
# Copyright 2022 Johnny Honu

