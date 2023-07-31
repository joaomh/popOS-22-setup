
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
sudo apt install python3-pip python3-nautilus
pip install --user nautilus-open-any-terminal
nautilus -q
glib-compile-schemas ~/.local/share/glib-2.0/schemas/
gsettings set com.github.stunkymonkey.nautilus-open-any-terminal terminal tilix

sudo apt update

# Gotta reboot now:
sudo apt update && sudo apt upgrade -y

echo $'\n'$"*** All done! Please reboot now. ***"
