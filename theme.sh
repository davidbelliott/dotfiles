
#!/bin/sh

python theme.py config.yaml

chmod +x ~/.shell.sh
xrdb ~/.Xresources
source ~/.bashrc
fc-cache

cd ~/build/dwm && sudo make clean install
cd ~/build/slock && sudo make clean install
cd ~/build/slstatus && sudo make clean install
cd ~/build/tabbed && sudo make clean install
echo "done"
