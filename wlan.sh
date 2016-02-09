echo "Moving the wlan services to /home/root/services"
mkdir /home/root/services
mv /lib/systemd/system/hostapd.service /home/root/services
mv /lib/systemd/system/wifi.service /home/root/services
echo "Disabled WLAN server."
echo "Consult the readme for instructions on how to add a wireless hotspot."
read -p "Press ENTER to reboot."
reboot

