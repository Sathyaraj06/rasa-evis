sudo apt-get install bind9

cat /etc/bind/named.conf

#check if correct
named-checkconf /path/to/named.conf

sudo systemctl restart bind9

