#!/bin/bash

echo "------------- installing utilities------------"

sudo apt install git -y
sudo apt install wget -y
sudo apt install curl -y
sudo apt install htop -y
sudo apt install neofetch -y
sudo apt install unzip -y
sudo apt install chromium-browser -y
sudo apt install mysql-server -y
sudo apt install python3-pip

curl -fsSL https://code-server.dev/install.sh | sh
curl -sL https://deb.nodesource.com/setup_16.x | sudo bash -
sudo apt install nodejs -y


echo "------------- setting up directories --------------"

mkdir $HOME/Projects
mkdir $HOME/University
mkdir $HOME/Pictures
