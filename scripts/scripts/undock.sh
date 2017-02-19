#!/bin/sh

xrandr --output HDMI1 --off
~/.fehbg
xrdb ~/.Xresources
xset s on
xset dpms
sudo ip link set wlp2s0 down
sudo netctl stop-all
sudo netctl start wlp2s0-Synapse
