## Usage

cp autohotspot /usr/bin

cp autohotspot.service /etc/systemd/system

cp selectable.wlan /etc/wpa_supplicant 

systemctl enable autohotspot.service

/etc/network/interfaces

```bash
# interfaces(5) file used by ifup(8) and ifdown(8)

# Please note that this file is written to be used with dhcpcd
# For static IP, consult /etc/dhcpcd.conf and 'man dhcpcd.conf'

# Include files from /etc/network/interfaces.d:
source-directory /etc/network/interfaces.d

auto lo
auto wlan0

iface lo inet loopback
iface wlan0 inet manual
        wpa-conf /etc/wpa_supplicant/wpa_supplicant.conf

# Added by rPi Access Point Setup
allow-hotplug wlan0
```

## Mount encrypted folder from GIT
```
sudo apt-get install ecryptfs-utils

mkdir encrypted_src

sudo mount -f ecryptfs encrypted encrypted_src
```
