#!/bin/bash
apt-get update &&
apt-get upgrade &&
apt-get dist-upgrade &&
# xset -dpms &&
date &&
date +%s &&
date +%s >> /var/log/wartung_log/timeline.txt &&
date >> /var/log/wartung_log/timeline.txt &&
uptime >> /var/log/wartung_log/timeline.txt &&
echo ------------------------------- >> /var/log/wartung_log/timeline.txt &&
awffull &&
echo awffull updated &&
webalizer &&
echo webalizer updated &&
# echo "starte infinote" &&
# infinote.sh &&
# echo " gobby server gestartet" &&
updatedb
# echo "alle programme geladen!!!"