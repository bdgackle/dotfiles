#!/bin/sh

xrandr --output HDMI1 --above eDP1 --auto
~/.fehbg
xrdb ~/.Xresources-1080p
xset s off
xset -dpms
sudo systemctl restart dhcpcd
sudo netctl stop-all
