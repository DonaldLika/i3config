#!/bin/bash

# Make chromium-browser open mail with evolution
# Just a hack - will likely break if xdg-utils are updated
# Figure out a different method tills then

mkdir -p ~/.gconf/desktop/gnome/url-handlers/mailto
gconftool-2 --set /desktop/gnome/url-handlers/mailto/command -t string 'evolution %s'
gconftool-2 --set /desktop/gnome/url-handlers/mailto/enabled -t bool true
sudo sed 's/open_generic "${mailto}"/open_gnome "${mailto}"/' -i /usr/bin/xdg-email
