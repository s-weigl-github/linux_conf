#!/bin/bash
echo "............................................."
echo "----Grundinstallation wird nun ausgeführt----"
echo "...."
echo "----Bitte Warten----"
apt-get install gcc g++ make cmake gettext automake
apt-get install libtool gnu-standards flex bison psmisc
apt-get install unzip unrar zip rar bzip2 lha zoo arj lzma
apt-get install moreutils module-assistant buildessential
apt-get install dialog acct menu autotools-dev dh-make
apt-get install fakeroot xfsdump xfsprogs xfslibs-dev
apt-get install ssh ssh-askpass openssh-server rssh
apt-get install hddtemp rcconf sensord debian-keyring
apt-get install whowatch arpwatch ethtool bwm-ng ntp ntpdate
apt-get install alien lsb-rpm rpm-i18n elfutils lynx lynx-cur-wrapper
apt-get install libc6-dev libc-dev splix xrdp exfat-utils exfat-fuse
apt-get install smartmontools systemd 
echo "----Grundinstallation abgeschlossen----"
echo "...."
