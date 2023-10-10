#!/bin/bash -i
sudo apt update
sudo apt-get update

echo "--------------------"
echo "Installing dependencies:"
echo "--------------------"
sudo apt install automake autoconf libreadline-dev -y
sudo apt install libncurses-dev libssl-dev libyaml-dev -y
sudo apt install libxslt-dev libffi-dev libtool unixodbc-dev -y
sudo apt install unzip -y
sudo apt-get install ca-certificates inotify-tools -y


echo "--------------------"
echo "Installing Vim:"
echo "--------------------"
sudo apt install vim -y

# Git
echo "--------------------"
echo "Installing Git:"
echo "--------------------"
sudo apt install git -y

git config --global user.name "theoneandonlywoj"
git config --global user.email "theoneandonlywoj@gmail.com"

echo "--------------------"
echo "Your Git config:"
echo "--------------------"
git config -l

# VSCode (source: https://phoenixnap.com/kb/install-vscode-ubuntu)
echo "--------------------"
echo "Installing VSCode:"
echo "--------------------"
sudo apt install software-properties-common apt-transport-https wget -y
wget -q https://packages.microsoft.com/keys/microsoft.asc -O- | sudo apt-key add -
sudo add-apt-repository "deb [arch=amd64] https://packages.microsoft.com/repos/vscode stable main"
sudo apt install code -y

echo "--------------------"
echo "Visual Studio Code:"
echo "--------------------"
code --version

# ASDF
echo "--------------------"
echo "Installing ASDF:"
echo "--------------------"
sudo apt-get install curl -y

sudo rm -rf ~/.asdf
git clone --depth 1 https://github.com/asdf-vm/asdf.git $HOME/.asdf && \
    echo '. $HOME/.asdf/asdf.sh' >> $HOME/.bashrc && \
    echo '. $HOME/.asdf/completions/asdf.bash' >> $HOME/.bashrc && \
    echo '. $HOME/.asdf/asdf.sh' >> $HOME/.profile

echo "------------------------------------------------------------"
echo "Please restart your terminal and run the next script."
echo "------------------------------------------------------------"
