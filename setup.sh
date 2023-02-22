#!/bin/bash

echo "[Software] : install all soft..."

su - vagrant -c "sudo apt update && sudo apt install -y \
slim \
snapd \
xinit \
xdg-utils \
lxsession \
libnotify4 \
mysql-server \
qttools5-dev \
xserver-xorg-core"

echo "[MySQL] : Activate mysql..."

systemctl is-active mysql

systemctl status mysql

echo "[Workbench] : install workbench (it may take a few minutes, please, wait)..."

su - vagrant -c "sudo snap install mysql-workbench-community"

echo "[Workbench] : copy workbench icon..."

cp /home/vagrant/project/workbench.png /usr/share/icons/workbench.ico

echo "[Workbench] : create workbench label..."

cat << EOF > /usr/share/applications/workbench.desktop
[Desktop Entry]
Name=Workbench
Comment=Best IDE for MYSQL
Keywords=workbench
Exec=mysql-workbench-community
Terminal=false
Type=Application
Icon=/usr/share/icons/workbench.ico
Categories=System
NoDiplay=false
EOF

### Wbox Guest Addition
### Install for clipboard
### And 'drag and drop'

# echo "[Guest Additions] : installing..."

### Add your version of
### Vbox to this variable:
# vbox_version = '6.1.34'

#su - vagrant -c "wget -c \
# http://download.virtualbox.org/virtualbox/$vbox_version/VBoxGuestAdditions_$vbox_version.iso"
#mkdir /mnt/guest
#mount VBoxGuestAdditions*.iso -o loop /mnt/guest
#cd /mnt/guest
#sh VBoxLinuxAdditions.run --nox11
#cd /home/vagrant
#rm VBoxGuestAdditions*.iso
#umount /mnt/guest
#rm -r /mnt/guest

echo "[machine : $(hostname)] has been setup succefully!"
