#!/bin/bash

# Ubuntu (GNOME) 20.04 LTS setup script.

# Initial Software
# zsh, terminator, tmux, tilix
sudo apt install zsh
chsh -s $(which zsh)
sudo apt install tmux
sudo apt install terminator
sudo apt install tilix

# gnome tweaks
sudo apt install gnome-tweaks

# VPN - no command-line
sudo apt-get install openvpn
sudo apt-get install network-manager-openvpn-gnome
sudo apt install resolvconf

# command-line
sudo apt install -y openvpn dialog python3-pip python3-setuptools
sudo pip3 install protonvpn-cli

# bashtop
sudo apt install bashtop

sudo apt update

# Gotta reboot now:
sudo apt update && sudo apt upgrade -y

echo $'\n'$"*** All done! Please reboot now. ***"
