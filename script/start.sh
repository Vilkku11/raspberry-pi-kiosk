echo "test"

sed -i 's/"exit_type":"Crashed"/"exit_type":"Normal"/' /home/pi/.config/chromium/Default/Preferences

#/usr/bin/chromium-browser --noerrordialogs --start-fullscreen --start-maximized https://exposure.shodan.io/#/FI

/usr/bin/chromium-browser --noerrordialogs --kiosk https://exposure.shodan.io/#/FI
