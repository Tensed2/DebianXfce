#!/bin/bash

#Tools
sudo apt install numlockx git lsd bat bash-completion speedtest-cli gufw htop fastfetch ffmpeg unzip unrar p7zip p7zip-full -y

sudo apt install iptraf-ng ncdu duf -y

#APPS
sudo apt install gparted synaptic keepassxc vlc qbittorrent -y

# Install fonts
sudo apt install fonts-font-awesome fonts-powerline fonts-ubuntu ttf-mscorefonts-installer fonts-roboto fonts-jetbrains-mono fonts-terminus fonts-liberation fonts-liberation2 onts-noto-cjk fonts-noto-color-emoji fonts-noto-core fonts-opensymbol fonts-ubuntu -y

#Display Server
#------------------#

# xorg display server installation (Minimal)
sudo apt install -y xserver-xorg-core xserver-xorg-video-amdgpu xserver-xorg-input-all x11-xserver-utils x11-xkb-utils x11-utils xinit
#sudo apt install -y xorg xbacklight xbindkeys xvkbd xinput

##GUI (Xfce)
#XFCE packages
sudo apt install -y xfce4 xfce4-goodies

# Install LightDM GTK Greeter Settings (lightdm,lightdm-gtk-greeter installs with xfce)
#sudo apt install -y lightdm
sudo apt install -y lightdm-gtk-greeter-settings slick-greeter
sudo systemctl enable lightdm

# Create folders in user directory (eg. Documents,Downloads,etc.)
xdg-user-dirs-update

# Sound packages (pipewire)
sudo apt install -y pipewire pipewire-pulse wireplumber

# Printing and bluetooth (if needed)
#sudo apt install -y cups
#sudo apt install -y bluez blueman

#sudo systemctl enable bluetooth
#sudo systemctl enable cups


#Clean
sudo apt autoclean && sudo apt autoremove -y


printf "\e[1;32mTime to reboot! Thanks!\e[0m\n"
