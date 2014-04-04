#!/bin/sh

sudo apt-get install -y dkms
sudo mkdir /mnt/disk
sudo mount -o loop VBoxGuestAdditions.iso /mnt/disk
cd /mnt/disk
sudo sh VBoxLinuxAdditions.run install --force || :
sudo rm -f ~/VBoxGuestAdditions.iso
