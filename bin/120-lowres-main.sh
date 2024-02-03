#!/usr/bin/env bash

hyprctl keyword monitor HDMI-A-1,1920x1080@120.000,0x0,1,bitdepth,10,vrr,1 \
    & xrandr --output HDMI-A-1 --primary \
    & powerprofilesctl set performance