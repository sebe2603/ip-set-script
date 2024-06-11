#/bin/bash
ipv6=$(ifconfig | grep inet6 | tr -s " " | cut -d " " -f3 | head -1 | cut -d ":" -f6)
ipv4=$(ifconfig | grep inet | tr -s " " | cut -d " " -f3 | head -1 | cut -d "." -f4)
interfejs=$(ifconfig | tr -s " " | head -1 | cut -d ":" -f1)
ip addr add 10.2.10.$ipv4/24 broadcast 10.2.10.255 dev $interfejs
ip -6 addr add fc00:1:1:1::$ipv6/64 dev $interfejs
echo "nowy adres ipv4: 10.2.10.$ipv4	nowy adres ipv6: fc00:1:1:1::$ipv6"
