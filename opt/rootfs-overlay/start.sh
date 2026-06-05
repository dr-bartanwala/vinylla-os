# connect to network
#!/bin/sh
# Buildroot typically uses standard sh, not bash
SSID="Dr.Bhanushali"
PASSWORD="KHUDHR@2613"
INTERFACE="wlan0"

echo "Bringing up interface $INTERFACE..."
ip link set $INTERFACE up

echo "Generating wpa_supplicant configuration..."
# Create a temporary config file for wpa_supplicant
wpa_passphrase "$SSID" "$PASSWORD" > /tmp/wpa_supplicant.conf

echo "Starting wpa_supplicant..."
# Run wpa_supplicant in the background (-B)
# -i specifies interface, -c specifies config file
wpa_supplicant -B -i "$INTERFACE" -c /tmp/wpa_supplicant.conf

echo "Waiting for association..."
sleep 5

echo "Requesting IP address via DHCP..."
# udhcpc is the default lightweight DHCP client in Buildroot (BusyBox)
udhcpc -i "$INTERFACE" -n

echo "Network status:"
ip addr show $INTERFACE



