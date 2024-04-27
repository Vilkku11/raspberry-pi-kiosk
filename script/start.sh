
# Configure Chromium to hide "Crashed" popup
sed -i 's/"exit_type":"Crashed"/"exit_type":"Normal"/' /home/pi/.config/chromium/Default/Preferences

# Start Chromium browser
/usr/bin/chromium --noerrordialogs --kiosk https://exposure.shodan.io/#/FI

