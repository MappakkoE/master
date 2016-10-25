#!/bin/bash

#installing squid3
aptitude -y install squid3
rm -f /etc/squid3/squid.conf
#restoring squid config with open port proxy 3128, 7166, 8080
wget -P /etc/squid3/ "https://raw.githubusercontent.com/MappakkoE/master/master/squid.conf"
sed -i "s/ipserver/$IP/g" /etc/squid3/squid.conf
service squid3 restartcd
