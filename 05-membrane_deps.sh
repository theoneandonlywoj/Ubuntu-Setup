#!/bin/bash -i
# Membrane Core
# https://github.com/membraneframework/membrane_core
sudo apt install libmad0-dev -y

# Membrane H264 FFMpeg Plugin#
# https://github.com/membraneframework/membrane_h264_ffmpeg_plugin
sudo apt-get install libavcodec-dev libavformat-dev libavutil-dev -y

# Membrane MP3 MAD plugin
# https://github.com/membraneframework/membrane_mp3_mad_plugin
# Quote from Readme (2023/10/15):
# This package depends on the MAD library (https://www.underbit.com/products/mad/).
# The precompiled build will be pulled and linked automatically.
# However, should there be any problems, consider installing it manually.

# Membrane PortAudio plugin
# https://github.com/membraneframework/membrane_portaudio_plugin
sudo apt-get install portaudio19-dev -y

# Check more at:
# https://github.com/membraneframework/membrane_core#all-packages