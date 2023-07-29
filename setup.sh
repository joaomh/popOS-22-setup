#!/bin/bash
# Ubuntu (GNOME) 20.04 LTS setup script.

# Initial Software
# zsh, terminator, tmux, tilix

sudo apt install zsh
sh -c "$(wget https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh -O -)"
chsh -s $(which zsh)
sudo apt install tmux
sudo apt install terminator
sudo apt install tilix

# gnome tweaks
sudo apt install gnome-tweaks

# GNOME 
sudo apt install gnome-session 
gnome-extensions disable pop-cosmic@system76.com

# bashtop
sudo apt install bashtop

# sensors
sudo apt install lm-sensors

sudo apt update

# Gotta reboot now:
sudo apt update && sudo apt upgrade -y

echo $'\n'$"*** All done! Please reboot now. ***"
