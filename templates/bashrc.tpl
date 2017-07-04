#
# ~/.bashrc
#

# If not running interactively, don't do anything
[[ $- != *i* ]] && return

alias ls='ls --color=auto'
alias safe-eject='udiskie-umount -fd'
PS1='[\u@\h \W]\$ '

PATH=$PATH:/home/david/.gem/ruby/2.4.0/bin

~/.shell.sh
