#!/bin/sh -e
BASEDIR="$(dirname "$(readlink -f "$0")")"

sudo pacman -S --noconfirm terminus-font wqy-bitmapfont libxft libxinerama
mkdir ~/build
cd ~/build
git clone https://git.suckless.org/dwm
git clone https://git.suckless.org/dmenu
git clone https://git.suckless.org/slstatus
git clone https://git.suckless.org/st
git clone https://git.suckless.org/slock

cd slstatus
git apply "$BASEDIR/slstatus.patch"
