#!/bin/bash

sudo /sbin/losetup /dev/loop$1 floppy.img
sudo mount /dev/loop$1 /mnt2
sudo cp src/kernel /mnt2/kernel
sudo cp initrd.img /mnt2/initrd
sudo umount /dev/loop$1
sudo /sbin/losetup -d /dev/loop$1
