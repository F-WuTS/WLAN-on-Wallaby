# WLAN on Wallaby

## Usage

* Clone this repo to a USB stick
* Insert USB stick and reboot
* Connect to your Wallby over WiFi
* Open up Harrogate (192.168.125.1:8888)
* Open Terminal and execute
	`/mnt/WLAN-on-Wallaby/wlan.sh`

Once the Wallaby has rebooted you can add WiFi network with **wpa_cli**.

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

If you want to assing an IP address over DHCP run `dhclient -v -r wlan0`

To undo all changes run `/mnt/wlan-undo.sh`

