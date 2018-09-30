#
# ~/.bashrc
#

# If not running interactively, don't do anything
[[ $- != *i* ]] && return

alias ls='ls --color=auto'
alias safe-eject='udiskie-umount -fd'
PS1='[\u@\h \W]\$ '
EDITOR=vim

PATH=$PATH:/home/david/.gem/ruby/2.4.0/bin:$HOME/bin:/opt/cuda/bin
LD_LIBRARY_PATH=$LD_LIBRARY_PATH:/home/david/old-boost/usr/lib:/home/david/old-icu/usr/lib

source /opt/ros/lunar/setup.bash

~/.shell.sh
