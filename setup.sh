#!/bin/bash

# yay
yay -S microsoft-edge-stable-bin
yay -S visual-studio-code-bin nano
yay -S fcitx5-im fcitx5-mozc-ut 
yay -S ttf-udev-gothic
yay -S glow fcitx5-configtool
yay -S gnome-control-center gvfs gvfs-google gvfs-onedrive

# link
$(cd $(dirname $0); pwd)/link.sh