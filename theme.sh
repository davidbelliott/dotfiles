
#!/bin/sh

. venv/bin/activate
./theme.py config.yaml
deactivate

chmod +x ~/.shell.sh

cd ~/build/dwm && sudo make clean install
cd ~/build/st && sudo make clean install
cd ~/build/dmenu && sudo make clean install
cd ~/build/slock && sudo make clean install
cd ~/build/slstatus && sudo make clean install

echo "done"
