#!/bin/sh
xrandr --output VGA-0 --off --output DP-6 --off --output DP-5 --off --output DP-4 --off --output DP-1 --off
xrandr --output DP-3 --pos 0x0 --rotate normal --mode 1920x1080
xrandr --output DP-0 --pos 1920x0 --rotate normal --mode 1920x1080
xrandr --output DP-2 --pos 3840x0 --rotate normal --mode 1920x1080
xrandr --output DP-0 --primary
