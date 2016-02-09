echo "Moving the wlan services from /home/root/services back to systemd"
mv /home/root/services/hostapd.service /lib/systemd/system 
mv /home/root/services/wifi.service /lib/systemd/system
read -p "Undo complete. Press ENTER to reboot."
reboot
