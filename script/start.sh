
# Configure Chromium to hide "Crashed" popup
sed -i 's/"exit_type":"Crashed"/"exit_type":"Normal"/' /home/$SUDO_USER/.config/chromium/Default/Preferences

# Start Chromium browser
set -m
/usr/bin/chromium-browser --noerrordialogs --kiosk https://demo.netbox.dev/login &



  sleep 20

  xdotool type raspberrypi6
  sleep 1
  xdotool key Tab
  sleep 1
  xdotool type raspberrypi6
  sleep 2
  xdotool key Tab
  sleep 1
 xdotool key Return

