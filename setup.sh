sudo apt-get install isc-dhcp-server
sudo apt-get install hostapd

cp /usr/share/doc/hostapd/examples/hostapd.conf.gz .
gunzip hostapd.conf.gz
sudo cp hostapd.conf /etc/hostapd
rm hostapd.conf

sudo patch /etc/default/isc-dhcp-server < patches/etc_default_isc-dhcp-server.diff
sudo patch /etc/dhcp/dhcpd.conf < patches/etc_dhcp_dhcpd.conf.diff
sudo patch /etc/dhcpcd.conf < patches/etc_dhcpcd.conf.diff
sudo patch /etc/default/hostapd < patches/etc_default_hostapd.diff
sudo patch /etc/hostapd/hostapd.conf < patches/etc_hostapd_hostapd.conf.diff

sudo systemctl disable isc-dhcp-server
sudo systemctl disable hostapd
