#!/bin/bash
echo "............................................."
echo "----first apt sync----"
apt update && upgrade
echo "----first apt sync DONE!----"
echo "...."
echo "----Base install started----"
echo "...."
echo "----Please hold----"
apt install -yf moreutils net-tools mlocate git curl software-properties-common
echo "...."
apt install -yf gcc g++ make cmake gettext automake binutils autoconf gnu-standards 
echo "...."
apt install -yf build-essential module-assistant flex bison psmisc
echo "...."
apt install -yf dialog menu autotools-dev dh-make genisoimage bpytop
echo "...."
apt install -yf hddtemp debian-keyring apt-transport-https autofs tree
echo "...."
apt install -yf whowatch arpwatch ethtool bwm-ng ntp ntpdate dmidecode
echo "...."
apt install -yf alien rpm rpm-common rpm-i18n elfutils lynx lynx-common
echo "...."
apt install -yf smartmontools unzip unrar zip rar bzip2 arj lzma lshw
echo "...."
apt install -yf hdparm blktool bc kmod dwarves libncurses5-dev fzf
echo "...."
apt install -yf libelf-dev qemu a2ps imagemagick groff gv html2ps hwinfo
echo "...."
apt install -yf htop neofetch texinfo pkg-config graphviz nfs-common
echo "...."
apt install -yf btrfs-progs lm-sensors acpi ncdu openssh-server ssh-askpass
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
