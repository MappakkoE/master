#!/bin/bash

#installing squid3
aptitude -y install squid3
wget -P /etc/squid3/ "https://raw.githubusercontent.com/MappakkoE/master/master/squid1.conf"
sed -i "s/ipserver/$IP/g" /etc/squid3/squid.conf
service squid3 restart
cd
