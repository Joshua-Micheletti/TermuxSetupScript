#!/bin/bash
pkg update
pkg upgrade
termux-setup-storage
pkg install wget curl proot tar screen openssh -y
sshd

mkdir $HOME/ubuntu
cp ./afterUbuntuSetup.sh $HOME/ubuntu
cp ./themes $HOME/ubuntu
cp ./icons $HOME/ubuntu
cd $HOME/ubuntu
wget https://raw.githubusercontent.com/tuanpham-dev/termux-ubuntu/master/ubuntu.sh
chmod +x ubuntu.sh
bash ubuntu.sh
screen -S ubuntu ./start-ubuntu20.sh
