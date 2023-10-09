#!/bin/bash
echo "............................................."
echo "----first apt sync----"
apt update && apt upgrade
echo "----first apt sync DONE!----"
echo "...."
echo "----Base install started----"
echo "...."
echo "----Please hold----"
sleep 2
echo "----systools----"
apt install -yf moreutils mlocate software-properties-common gnu-standards
apt install -yf binutils autoconf psmisc debian-keyring apt-transport-https
apt install -yf build-essential module-assistant autotools-dev dh-make
apt install -yf genisoimage libelf-dev texinfo pkg-config tree whowatch
apt install -yf bash-completion
echo "----systools done----"
sleep 2
echo "----info----"
apt install -yf crazydiskinfo bpytop inxi hddtemp htop neofetch lshw hwinfo
apt install -yf smartmontools ncdu lsscsi hdparm blktool fzf findmnt sysstat
echo "----info done----"
sleep 2
echo "----dev----"
apt install -yf git gcc g++ make cmake gettext automake flex bison bc kmod
apt install -yf dwarves libncurses5-dev
echo "----dev done----"
sleep 2
echo "----net----"
apt install -yf curl net-tools arpwatch ethtool bwm-ng ntp ntpdate
apt install -yf lynx lynx-common minicom openssh-server ssh-askpass
apt install -yf nfs-common autofs
echo "----net done----"
sleep 2
echo "----other----"
apt install -yf dmidecode alien rpm rpm-common rpm-i18n elfutils usbutils
apt install -yf btrfs-progs lm-sensors acpi qemu unzip unrar zip rar bzip2
apt install -yf arj lzma
echo "----other done----"
sleep 2
echo "----graphics----"
apt install -yf graphviz dialog menu a2ps imagemagick groff gv html2ps
echo "----graphics done----"
sleep 2
echo "...."
echo "----Base install finished----"
echo "...."
echo "............................................."
echo "----systm config----"
echo "...."
echo "----some things must be created ----"
echo "----and some must be changed----"
echo "...."
echo "----Please hold----"
sleep 2

mkdir -p downloads &&
mkdir -p scripts &&

echo 'export PATH=$HOME/scripts:$PATH' >> .bashrc &&
#echo 'PS1='\[\e[0;93m\]<\[\e[0;95m\]\t \[\e[0;37m\]\d\[\e[0;93m\]>\[\e[0;96m\]\u\[\e[0;96m\]@\[\e[0;96m\]\h\[\e[0m\]:\[\e[0;92m\]\w\[\e[0;38;5;39m\]\$ \[\e[0m\]'' >> .bashrc &&

#echo 'PermitRootLogin yes' >> /etc/ssh/sshd_config &&

echo "----all Done----"
echo "...."
updatedb &&
echo "----Systm reboot----"
#shutdown -r now
