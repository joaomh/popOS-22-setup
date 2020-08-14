# Configuration to uses GPU Nvidia for rendering in kdenlive

## Download shotcut

Git Clone 

[Source code](https://github.com/mltframework/shotcut/)

[Shotcut](https://www.shotcut.org/download/)

## Create a new render configuration

Deleted everything in the speed options and use mp4 format.

`
f=mp4 vcodec=nvenc_h264 acodec=aac g=120 global_quality=21 ab=384k vq=21 r=60 preset=slow bf=2`
