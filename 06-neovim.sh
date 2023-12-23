#!/bin/bash
sudo wget -q "https://github.com/neovim/neovim/releases/download/v0.9.4/nvim.appimage" -O /usr/bin/nvim
sudo chmod +x /usb/bin/nvim
nvim --version
