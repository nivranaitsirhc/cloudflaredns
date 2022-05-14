#!/system/bin/sh

# This script will be executed in late_start service mode

iptables -t nat -A OUTPUT -p tcp --dport 53 -j DNAT --to-destination 1.1.1.1:53
iptables -t nat -A OUTPUT -p udp --dport 53 -j DNAT --to-destination 1.0.0.1:53
iptables -t nat -I OUTPUT -p tcp --dport 53 -j DNAT --to-destination 1.1.1.1:53
iptables -t nat -I OUTPUT -p udp --dport 53 -j DNAT --to-destination 1.0.0.1:53