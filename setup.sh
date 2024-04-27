#!/bin/bash

# Update system
apt update  && apt upgrade -y

# Install dependencies

PKGS=(
    'chromium'
    'unclutter'
    'ufw'
    'sed'
    'ssh'
)

for PKG in "${PKGS[@]}"; do
    echo "Installing: ${PKG}"
    apt install "$PKG" -y
done


# Firewall
ufw enable
systemctl enable ufw.service
systemctl start ufw.service

ufw default deny
ufw limit ssh

# Open ssh service
systemctl enable ssh
systemctl start ssh

# Current directory
DIR=$PWD

# Copy necessary files
echo Copying autostart
cp $DIR/script/autostart /home/$SUDO_USER/.config/lxsession/LXDE-pi/autostart
echo Copying start.sh
cp $DIR/script/start.sh /home/.start.sh
chmod +x /home/.start.sh

echo "Done!"
