#!/bin/bash
# VARIABLES
theme="Orchis-Dark-Compact"
icons="kora"
opacity="90"


echo "------------- installing utilities------------"

sudo apt install git -y
sudo apt install wget -y
sudo apt install curl -y
sudo apt install htop -y
sudo apt install neofetch -y
sudo apt install unzip -y

echo "-------------- setting up themes --------------"

mkdir $HOME/.local/share/themes
mkdir $HOME/.local/share/icons

cp -r ./themes/Orchis* $HOME/.local/share/themes
cp -r ./icons/kora* $HOME/.local/share/icons

xfconf-query -c xsettings -p /Net/ThemeName -s $theme
xfconf-query -c xsettings -p /Net/IconThemeName -s $icons

xfconf-query -c xfwm4 -p /general/theme -s $theme
xfconf-query -c xfwm4 -p /general/move_opacity -s $opacity
xfconf-query -c xfwm4 -p /general/resize_opacity -s $opacity