#!/bin/bash
echo "deb https://download.webmin.com/download/repository sarge contrib" >> /etc/apt/sources.list
wget http://www.webmin.com/jcameron-key.asc
apt-key add jcameron-key.asc
apt install apt-transport-https -y
apt update
apt install webmin -y
rm jcameron-key.asc
echo "Webmin device has been setup successfully!"
sleep 5
