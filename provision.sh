#!/usr/bin/env bash
echo "Install Apache dan menalankan Apache Web Server, mohon tunggu sebentar"
apt-get update >/dev/null 2>&1
apt-get install apache2 -y >/dev/null 2>&1
rm -rf /var/www
ln -fs /vagrant /var/www
