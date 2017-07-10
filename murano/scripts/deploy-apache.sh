#!/bin/bash

sudo yum install httpd -y

for i in 443 80
  do
    sudo iptables -I INPUT 1 -p tcp -m tcp --dport $i -j ACCEPT -m comment --comment "by murano, Apache server access on HTTPS port $i"
done
