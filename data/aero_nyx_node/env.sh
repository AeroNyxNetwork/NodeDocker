
echo 1 | tee /proc/sys/net/ipv4/ip_forward
iptables -P FORWARD ACCEPT   
iptables -t nat -I POSTROUTING -s 192.168.0.0/255.255.0.0 -o eth0 -j MASQUERADE