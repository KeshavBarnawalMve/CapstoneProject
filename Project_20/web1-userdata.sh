#!/bin/bash

apt update -y
apt install apache2 -y

systemctl start apache2
systemctl enable apache2

cat <<HTML > /var/www/html/index.html
<h1>Project 20 Load Balancer Demo</h1>
<h2>Server: keshav-project20-web1</h2>
HTML
