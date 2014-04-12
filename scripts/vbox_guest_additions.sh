#!/bin/sh

sudo apt-get install -y dkms
sudo mkdir /mnt/disk
sudo mount -o loop VBoxGuestAdditions.iso /mnt/disk
cd /mnt/disk
sudo sh VBoxLinuxAdditions.run install --force || :
sudo rm -f ~/VBoxGuestAdditions.iso

# Workaround to fix the Guest additions bug in 4.3.10
# https://www.virtualbox.org/ticket/12879
if [ `cat ~/.vbox_version` = "4.3.10" ]; then
    sudo ln -s /opt/VBoxGuestAdditions-4.3.10/lib/VBoxGuestAdditions /usr/lib/VBoxGuestAdditions
fi
