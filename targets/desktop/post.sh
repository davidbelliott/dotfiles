#!/bin/sh -e
chmod +x ~/.shell.sh
fc-cache

cd ~/build/dwm && sudo make clean install
cd ~/build/dmenu && sudo make clean install
cd ~/build/slock && sudo make clean install
cd ~/build/slstatus && sudo make clean install
cd ~/build/st && sudo make clean install
