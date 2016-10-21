modprobe batman-adv
ifconfig wlan0 down
iwconfig wlan0 mode ad-hoc
ifconfig wlan0 mtu 1532
iwconfig wlan0 mode ad-hoc essid TLON-ADHOC ap 02:1B:55:AD:0C:02 channel 1
sleep 2
ip link set wlan0 up
sleep 1
batctl if add wlan0
ifconfig bat0 10.0.0.5 netmask 255.255.255.0 up

