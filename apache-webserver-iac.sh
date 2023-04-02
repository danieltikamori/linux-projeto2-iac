#!/bin/bash

echo "Updating system..."
apt-get update
apt-get upgrade -y

echo "Installing Apache Web Server..."
apt-get install apache2 -y

echo "Installing unzip tool..."
apt-get install unzip

echo "Downloading Application files..."
cd /tmp
wget https\://github.com/denilsonbonatti/linux-site-dio/archive/refs/heads/main.zip

echo "Unzipping files..."
unzip main.zip

echo "Copying unzipped files to webserver directory..."
cd linux-site-dio-main
cp -R \* /var/www/html/

echo "Finished with Success!"
