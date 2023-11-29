# Pop! OS 22.04 LTS Setup
This repository contains my settings for the Linux distributions Pop! OS 22.04

# OS INFO
Pop!_OS 22.04 (Linux Kernel 6.4.6-76060406-generic)

- RTX 4090 24GB
- AMD Ryzen 9 7900 12/24
- 64GB Corsair Dominator DDR5 DRAM 6200MHz
- 5TB SSD

## Terminal ZSH power10k
- [powerlevel10k](https://github.com/romkatv/powerlevel10k)

## Workaround for multiple Monitors with different refresh rates 
- "Force Full Composition Pipeline" in nvidia-settings for all monitors
- Disable "Sync to VBlank" and "Allow Flipping" in nvidia-settings -> OpenGL Settings
- Put these lines in /etc/environment:
```
CLUTTER_DEFAULT_FPS=240   
__GL_SYNC_DISPLAY_DEVICE=DP-0
```
## flatpak
com.bitwarden.desktop
com.discordapp.Discord
com.github.tchx84.Flatseal
com.heroicgameslauncher.hgl
com.jgraph.drawio.desktop
com.obsproject.Studio
com.slack.Slack
com.spotify.Client
io.atom.Atom
net.davidotek.pupgui2
net.lutris.Lutris
org.chromium.Chromium
org.cryptomator.Cryptomator
org.inkscape.Inkscape
org.kde.kdenlive
org.mozilla.Thunderbird
org.openrgb.OpenRGB

## Extensions
https://extensions.gnome.org/extension/5627/device-power-indicator/

https://extensions.gnome.org/extension/307/dash-to-dock/

https://extensions.gnome.org/extension/3991/bluetooth-battery/

https://extensions.gnome.org/extension/841/freon/

https://extensions.gnome.org/extension/750/openweather/

https://extensions.gnome.org/extension/906/sound-output-device-chooser/
