#!/bin/bash
echo "............................................."
echo "----Base install started----"
echo "...."
echo "----Please hold----"
apt install -yf moreutils net-tools mlocate git 
echo "...."
apt install -yf gcc g++ make cmake gettext automake binutils autoconf gnu-standards 
echo "...."
apt install -yf build-essential module-assistant flex bison psmisc
echo "...."
apt install -yf dialog menu autotools-dev dh-make
echo "...."
apt install -yf hddtemp debian-keyring 
echo "...."
apt install -yf whowatch arpwatch ethtool bwm-ng ntp ntpdate
echo "...."
apt install -yf alien rpm rpm-common rpm-i18n elfutils lynx lynx-common
echo "...."
apt install -yf smartmontools unzip unrar zip rar bzip2 arj lzma
echo "...."

echo "----Base install finished----"
echo "...."


#apt install -yf
#apt install -yf
#apt install -yf
#apt install -yf
#apt install -yf
#apt install -yf
#apt install -yf












echo "............................................."
echo "----systm config----"
echo "...."
echo "----some things must be created ----"
echo "----and some must be changed----"
echo "...."
echo "----Please hold----"

mkdir downloads &&
mkdir scripts &&

echo 'export PATH=$HOME/scripts:$PATH' >> .bashrc &&
echo 'PS1='\[\e[0;93m\]<\[\e[0;95m\]\t \[\e[0;37m\]\d\[\e[0;93m\]>\[\e[0;96m\]\u\[\e[0;96m\]@\[\e[0;96m\]\h\[\e[0m\]:\[\e[0;92m\]\w\[\e[0;38;5;39m\]\$ \[\e[0m\]'' >> .bashrc &&

echo 'PermitRootLogin yes' >> /etc/ssh/sshd_config &&

echo "----all Done----"
echo "...."
updatedb &&
echo "----Systm reboot----"
#shutdown -r now
