#!/system/bin/sh


# Set CF DNS servers address
resetprop -n net.eth0.dns1 1.1.1.1
resetprop -n net.eth0.dns2 1.0.0.1

resetprop -n net.dns1 1.1.1.1
resetprop -n net.dns2 1.0.0.1

resetprop -n net.ppp0.dns1 1.1.1.1
resetprop -n net.ppp0.dns2 1.0.0.1

resetprop -n net.rmnet0.dns1 1.1.1.1
resetprop -n net.rmnet0.dns2 1.0.0.1

resetprop -n net.rmnet1.dns1 1.1.1.1
resetprop -n net.rmnet1.dns2 1.0.0.1

resetprop -n net.pdpbr1.dns1 1.1.1.1
resetprop -n net.pdpbr1.dns2 1.0.0.1

resetprop -n 2606:4700:4700::1111
resetprop -n 2606:4700:4700::1001



# Edit the resolv conf file if it exist

if [ -a /system/etc/resolv.conf ]; then
	mkdir -p $MODDIR/system/etc/
	printf "nameserver 1.1.1.1\nnameserver 1.0.0.1" >> $MODDIR/system/etc/resolv.conf
	chmod 644 $MODDIR/system/etc/resolv.conf
fi