#!/bin/sh

# start programs
hsetroot -solid "#{{ base00 }}"
slstatus &
compton &
redshift &
exec dwm
