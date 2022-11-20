#!/bin/bash
pkg update
pkg upgrade
termux-setup-storage
pkg install wget curl proot tar screen -y
cd $HOME
mkdir ubuntu
cd ubuntu
wget https://raw.githubusercontent.com/tuanpham-dev/termux-ubuntu/master/ubuntu.sh
chmod +x ubuntu.sh
bash ubuntu.sh
screen -S ubuntu ./start-ubuntu20.sh