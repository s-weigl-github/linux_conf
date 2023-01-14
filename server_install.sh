#!/bin/bash
echo "................................................"
echo "----starte installation der Web-Server Komponenten----"
echo "...."
echo "----Bitte Warten----"
apt install apache2 mariadb-server php php-mysql libapache2-mod-php php-xml php-mbstring &&
apt install php-apcu php-intl imagemagick inkscape php-gd php-cli php-curl php-bcmath git &&
echo "----apache reload----"
service apache2 reload
echo "----installation web-server abgeschlossen----"
echo "...."
