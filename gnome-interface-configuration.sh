#!/bin/bash

#this script is run on every boot of a live linux image to quickly set all my system preferences, allowing me to not use a persistent installation

#this sets the mouse acceleration to off
gsettings set org.gnome.desktop.peripherals.mouse accel-profile 'flat'


#sets the wallpaper for both light and dark modes
gsettings set org.gnome.desktop.background picture-uri "file:///usr/share/backgrounds/gnome/blobs-l.svg"
gsettings set org.gnome.desktop.background picture-uri-dark "file:///usr/share/backgrounds/gnome/blobs-l.svg"

#set theme to dark mode
gsettings set org.gnome.desktop.interface color-scheme 'prefer-dark'

#set accent color to grey
gsettings set org.gnome.desktop.interface accent-color 'slate'

#adds minimize and maximize buttons to windows
gsettings set org.gnome.desktop.wm.preferences button-layout ":minimize,maximize,close"

#prohibits the screen from turning off automatically
gsettings set org.gnome.desktop.session idle-delay 0


#synchronizes time, sets timezone, shows day, sets military time format
sudo timedatectl set-ntp true
sudo timedatectl set-timezone EET
gsettings set org.gnome.desktop.interface clock-show-weekday true
gsettings set org.gnome.desktop.interface clock-format 24h


#adds the gr keyboard
gsettings set org.gnome.desktop.input-sources sources "[('xkb', 'us'), ('xkb', 'gr')]"




