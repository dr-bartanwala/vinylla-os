#!/bin/sh


##connect to network
INTERFACE="wlan0"

echo "Bringing up interface $INTERFACE..."
ip link set $INTERFACE up

echo "Starting wpa_supplicant..."
wpa_supplicant -B -i "$INTERFACE" -c /tmp/wpa_supplicant.conf

echo "Waiting for association..."
sleep 5

echo "Requesting IP address via DHCP..."
# udhcpc is the default lightweight DHCP client in Buildroot (BusyBox)
udhcpc -i "$INTERFACE" -n

echo "Network status:"
ip addr show $INTERFACE

## execute all the executables in background


