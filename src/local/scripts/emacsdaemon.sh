#!/usr/bin/env zsh

# Checks if there's a frame open
emacsclient -n -e "(if (> (length (frame-list)) 1) 't)" 2> /dev/null | grep t &> /dev/null
if [ "$?" -eq "1" ]; then
 emacsclient -a '' -c -nw "$@" #&> /dev/null
else
 emacsclient -nw "$@" &> /dev/null
fi
