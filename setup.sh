
# Current directory
DIR=$PWD


# Copy necessary files
cp $DIR/script/autostart /home/$SUDO_USER/.config/lxsession/LXDE-pi/autostart
cp $DIR/script/start.sh /home/$SUDO_USER/.start.sh
chmod +x /home/$SUDO_USER/.start.sh

