# WLAN on Wallaby

## Usage

* Clone this repo to a USB stick
* Insert USB stick and reboot
* Connect to your Wallby over USB
* Open up Harrogate (192.168.124.1:8888)
* Open Terminal and execute  
	`mount /dev/sda1 /mnt && /mnt/WLAN-on-Wallaby/wlan.sh`

Once the Wallaby has rebooted you can add WiFi networks with **wpa_cli**.

```bash
wpa_cli
add_network
> 0 # This number can be higher or lower depending on the already added networks
set_network <number-add_network-returned> ssid "insert-your-ssid-here"
> OK
set_network <number-add_network-returned> psk "insert-your-password-here"
> OK
enable_network <number-add_network-returned>
> OK
```

If you want to assing an IP address over DHCP run `dhclient -v -r wlan0`.

To undo all changes run `/mnt/wlan-undo.sh`.

## Caveats 
The WiFi module integrated into the Wallaby is absolutely terrible. Usage of a USB WiFi dongle is pretty much necessary.
