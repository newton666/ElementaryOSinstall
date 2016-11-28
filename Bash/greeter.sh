#!/bin/bash
#In Progress

sudo vim /usr/share/lightdm/lightdm.conf.d/40-pantheon-greeter.conf
sudo vim /usr/local/bin/correct-screen-resolution-pantheon-greeter
xrandr -q | grep 'HDMI1 connected' | awk '{ print $1 }'
xrandr -q | grep ' connected ' | awk '{ print $1 }'
sudo chmod +x /usr/local/bin/correct-screen-resolution-pantheon-greeter
sudo chmod /usr/local/bin/correct-screen-resolution-pantheon-greeter

