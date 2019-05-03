#!/bin/bash
# auf netzwerk warten
sleep 5
zenity --info --width=200 --timeout=5 --title="IP Adresse" --text="IP Adresse:\n$(ip addr | grep 'state UP' -A2 | tail -n1 | awk '{print $2}' | cut -f1  -d'/')"

# mouse weg bewegen -nach- browser start
sleep 20 && xdotool mousemove 10000 10000 &

#browser starten
exec /usr/bin/chromium-browser --kiosk https://www.divera247.com/monitor/3.html
