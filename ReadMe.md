# Repo-Sync
Sync and cache module sources of linux, node.js, python and docker.

## add new hard disk
sudo  fdisk  -l

>Disk **/dev/sdb: 3.7 TiB**, 4000787030016 bytes, 7814037168 sectors
>Units: sectors of 1 * 512 = 512 bytes
>Sector size (logical/physical): 512 bytes / 4096 bytes
>I/O size (minimum/optimal): 4096 bytes / 4096 bytes
## format (do only once!!!)

sudo mkfs.ext4  /dev/sdb

sudo blkid

>/dev/sdb: UUID="802ebf39-72c2-48ca-a626-d4e9afc02ae7" TYPE="ext4"

## mount
mkdir ~/data_disk
sudo su
echo 'UUID=802ebf39-72c2-48ca-a626-d4e9afc02ae7       /dev/data      ext4    defaults        0       0' >>/etc/fstab

sudo chmod -R 4755 /dev/data

sudo reboot

df -h

>/dev/sdb                         3.6T   89M  3.4T   1% /dev/data