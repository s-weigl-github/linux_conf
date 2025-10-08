#!/usr/bin/env bash
#
################################################################################
# Config
# set:
# -e: if it finds any error, it ends the execution immediately
set -e
#
# ============================================
# show banner
# ============================================
# link: https://patorjk.com/software/taag/#p=display&f=Big%20Money-ne&t=Base%20Install
show_header(){
cat << "HEADER"
 /$$$$$$$                                      /$$$$$$                       /$$               /$$ /$$
| $$__  $$                                    |_  $$_/                      | $$              | $$| $$
| $$  \ $$  /$$$$$$   /$$$$$$$  /$$$$$$         | $$   /$$$$$$$   /$$$$$$$ /$$$$$$    /$$$$$$ | $$| $$
| $$$$$$$  |____  $$ /$$_____/ /$$__  $$        | $$  | $$__  $$ /$$_____/|_  $$_/   |____  $$| $$| $$
| $$__  $$  /$$$$$$$|  $$$$$$ | $$$$$$$$        | $$  | $$  \ $$|  $$$$$$   | $$      /$$$$$$$| $$| $$
| $$  \ $$ /$$__  $$ \____  $$| $$_____/        | $$  | $$  | $$ \____  $$  | $$ /$$ /$$__  $$| $$| $$
| $$$$$$$/|  $$$$$$$ /$$$$$$$/|  $$$$$$$       /$$$$$$| $$  | $$ /$$$$$$$/  |  $$$$/|  $$$$$$$| $$| $$
|_______/  \_______/|_______/  \_______/      |______/|__/  |__/|_______/    \___/   \_______/|__/|__/
                                                                          Developed by Sebastian Weigl
HEADER
}
#
##########################################################
# 1 #
##########################################################
install_system_tools(){
  echo
  echo "############################################"
  echo " Install sytem tools"
  echo "############################################"
  #
  apt install -y \
    bc \
    bat \
    kmod \
    most \
    tree \
    lsof \
    lnav \
    fwupd \
    rsync \
    strace \
    psmisc \
    gettext \
    plocate \
    texinfo \
    binutils \
    autoconf \
    whowatch \
    moreutils \
    pkg-config \
    libelf-dev \
    genisoimage \
    gnu-standards \
    bash-completion \
    libncurses5-dev \
    software-properties-common
}
#
##########################################################
# 2 #
##########################################################
install_info(){
  echo
  echo "############################################"
  echo " Install info tools"
  echo "############################################"
  #
  apt install -y \
    fzf \
    inxi \
    htop \
    lshw \
    ncdu \
    btop \
    bpytop \
    hwinfo \
    lsscsi \
    hdparm \
    blktool \
    sysstat \
    neofetch \
    dmidecode \
    smbios-utils \
    smartmontools
}
#
##########################################################
# 3 #
##########################################################
install_dev_tools(){
  echo
  echo "############################################"
  echo " Install development tools"
  echo "############################################"
  #
  apt install -y \
    git \
    gcc \
    g++ \
    flex \
    make \
    bison \
    cmake \
    dwarves \
    lowdown \
    automake \
    shellcheck \
    git-extras \
    autotools-dev
}
#
##########################################################
# 4 #
##########################################################
install_net_tools(){
  echo
  echo "############################################"
  echo " Install network tools"
  echo "############################################"
  #
  apt install -y \
    ntp \
    lynx \
    curl \
    autofs \
    minicom \
    ntpdate \
    ethtool \
    sipcalc \
    arpwatch \
    ipcalc-ng \
    net-tools \
    nfs-common \
    lynx-common \
    ssh-askpass \
    openssh-server
}
#
##########################################################
# 5 #
##########################################################
install_other_tools(){
  echo
  echo "############################################"
  echo " Install other tools"
  echo "############################################"
  #
  apt install -y \
    iat \
    rpm \
    zip \
    rar \
    arj \
    tldr \
    acpi \
    lzma \
    alien \
    unzip \
    unrar \
    bzip2 \
    pbzip2 \
    usbutils \
    elfutils \
    rpm-i18n \
    rpm-common \
    lm-sensors \
    btrfs-progs
}
#
##########################################################
# 6 #
##########################################################
install_deb_specific(){
  echo
  echo "############################################"
  echo " Install specific Debian tools"
  echo "############################################"
  #
  apt install -y \
    sudo \
    dh-make \
    debian-keyring \
    build-essential \
    ca-certificates \
    module-assistant \
    apt-show-versions \
    apt-transport-https
}
#
##########################################################
# 7 #
##########################################################
install_graphic_tools(){
  echo
  echo "############################################"
  echo " Install graphic tools"
  echo "############################################"
  #
  apt install -y \
    gv \
    a2ps \
    menu \
    groff \
    dialog \
    html2ps \
    graphviz \
    imagemagick
}
#
########################### MAIN #########################
show_header
sleep 2
apt update && apt upgrade
#
install_deb_specific  # 6 #
sleep 2
install_system_tools  # 1 #
sleep 2
install_info          # 2 #
sleep 2
install_dev_tools     # 3 #
sleep 2
install_net_tools     # 4 #
sleep 2
install_other_tools   # 5 #
sleep 2
install_graphic_tools # 7 #
#
##########################################################
# end of script #
##########################################################
echo "############################################"
echo "Done! all packages have been installed "
echo "############################################"