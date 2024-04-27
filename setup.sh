
# Update system
apt update  && apt upgrade -y

# Install dependencies
apt install chromium -y


# Current directory
DIR=$PWD

# Copy necessary files
echo Copying autostart
cp $DIR/script/autostart /home/$SUDO_USER/.config/lxsession/LXDE-pi/autostart
echo Copying start.sh
cp $DIR/script/start.sh /home/$SUDO_USER/.start.sh
chmod +x /home/$SUDO_USER/.start.sh

echo "Done!"

