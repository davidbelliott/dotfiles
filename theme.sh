
#!/bin/sh

python theme.py config.yaml

chmod +x ./output/shell.sh
xrdb ~/.Xresources
source ~/.bashrc
cd ~/build/dwm && sudo make clean install
cd ~/build/slock && sudo make clean install
echo "done"
