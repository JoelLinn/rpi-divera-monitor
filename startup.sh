#!/bin/bash
# Bildschirmschoner ausschalten
xset s noblank
xset s off
xset -dpms

# auf netzwerk warten und IP Anzeigen
sleep 5
zenity --info --width=200 --timeout=5 --title="IP Adresse" --text="IP Adresse:\n$(ip addr | grep 'state UP' -A2 | tail -n1 | awk '{print $2}' | cut -f1  -d'/')"

# Maus verstecken
unclutter &

# Browser starten
exec /usr/bin/chromium-browser --kiosk --incognito --noerrdialogs --no-first-run --fast --fast-start --disable-infobars --disable-translate --disable-features=TranslateUI --disk-cache-dir=/dev/null  --password-store=basic https://www.divera247.com/monitor/3.html?autologin=hier-das-token-fuer-den-monitor-nutzer-einfuegen
