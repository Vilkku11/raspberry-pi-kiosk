
# Configure Chromium to hide "Crashed" popup
sed -i 's/"exit_type":"Crashed"/"exit_type":"Normal"/' /home/$SUDO_USER/.config/chromium/Default/Preferences

# Start Chromium browser
set -m
/usr/bin/chromium-browser --noerrordialogs --kiosk https://172.16.1.42 &



  sleep 30

  xdotool type limited
  sleep 1
  xdotool key Tab
  sleep 1
  xdotool type passu1212
  sleep 2
  xdotool key Tab
  sleep 1
  xdotool key Tab
  sleep 1
 xdotool key Return

