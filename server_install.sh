#!/bin/bash
echo "................................................"
echo "----starte installation der Web-Server Komponenten----"
echo "...."
echo "----Bitte Warten----"
apt-get install mysql-server mysql-client nginx
apt-get install php5-common php5 php-pear
apt-get install php5-cgi php5-mysql php5-curl php5-gd
apt-get install php5-idn php-pear php5-imagick php5-imap
apt-get install php5-mcrypt php5-memcache php5-mhash php5-ming
apt-get install php5-pspell php5-recode php5-snmp php5-sqlite
apt-get install php5-tidy php5-xmlrpc php5-xsl phpmyadmin
echo "----zusätzliche pakete----"
apt-get install 
echo "----installation web-server abgeschlossen----"
echo "...."
