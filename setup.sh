
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

# install powerlevel10k
git clone --depth=1 https://github.com/romkatv/powerlevel10k.git ~/powerlevel10k
echo 'source ~/powerlevel10k/powerlevel10k.zsh-theme' >>~/.zshrc

# config dual monitor to force your refresh rate
echo 'CLUTTER_DEFAULT_FPS=240' >>~/etc/environment
echo '__GL_SYNC_DISPLAY_DEVICE=DP-0' >>~/etc/environment


# gnome tweaks
sudo apt install gnome-tweaks

# GNOME 
sudo apt install gnome-session 
gnome-extensions disable pop-cosmic@system76.com

# bashtop
sudo apt install bashtop

# sensors
sudo apt install lm-sensors

# virt manager
sudo apt-get install virt-manager

# change nautilus-open-terminal
sudo apt-get remove gnome-terminal
sudo ln -s /usr/bin/tilix /usr/bin/gnome-terminal

sudo apt update

# Gotta reboot now:
sudo apt update && sudo apt upgrade -y

echo $'\n'$"*** All done! Please reboot now. ***"
