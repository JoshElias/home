#!/usr/bin/env bash

# Toolkit Backend Variables
export GDK_BACKEND=wayland,x11
export QT_QPA_PLATFORM="wayland;xcb"
export SDL_VIDEODRIVER=wayland
export CLUTTER_BACKEND=wayland

# XDG Specifications
export XDG_CURRENT_DESKTOP=Hyprland
export XDG_SESSION_TYPE=wayland
export XDG_SESSION_DESKTOP=Hyprland

# Qt Variables
export QT_AUTO_SCREEN_SCALE_FACTOR=1
export QT_WAYLAND_DISABLE_WINDOWDECORATION=1
export QT_QPA_PLATFORMTHEME=qt5ct

/usr/bin/Hyprland
