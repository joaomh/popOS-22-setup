# Pop! OS 22.04 LTS Setup
This repository contains my settings for the Linux distributions Pop! OS 22.04

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
