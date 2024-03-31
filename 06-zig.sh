#!/bin/bash -i
echo "--------------------"
echo "Installing Zig:"
echo "--------------------"
wget https://ziglang.org/builds/zig-linux-x86_64-0.12.0-dev.3496+a2df84d0f.tar.xz
mkdir -p /home/$USER/ziglang
tar -xf zig-linux-x86_64-0.12.0-dev.3496+a2df84d0f.tar.xz -C /home/$USER/ziglang
echo 'export PATH="$HOME/ziglang/zig-linux-x86_64-0.12.0-dev.3496+a2df84d0f:$PATH"' >> ~/.bashrc
rm zig-linux-x86_64-0.12.0-dev*
zig version