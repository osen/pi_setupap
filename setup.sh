sudo apt-get install isc-dhcp-server

patch /etc/default/isc-dhcp-server < isc-dhcp-server.diff
patch /etc/dhcp/dhcpd.conf < dhcpd.conf.diff
patch /etc/network/interfaces < interfaces.diff

sudo apt-get install hostapd

cp /usr/share/doc/hostapd/examples/hostapd.conf.gz .
gunzip hostapd.conf.gz
sudo cp hostapd.conf /etc/hostapd
rm hostapd.conf

patch /etc/hostapd/hostapd.conf < hostapd.conf.diff
patch /etc/default/hostapd < hostapd.diff
