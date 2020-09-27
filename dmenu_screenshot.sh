#!/bin/bash

chosen=$(echo -e "Cancel\nFullscreen\nSelect\nDelay" | dmenu -i -p "Scrot:" )

if [[ $chosen = "Fullscreen" ]]; then
		scrot ~/  
elif [[ $chosen = "Select" ]]; then
		scrot -s ~/
elif [[ $chosen = "Delay" ]]; then

	dmenu -p "Delay:" | read delay 
	scrot -d $delay

fi
