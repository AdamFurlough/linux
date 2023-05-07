# HOW TO MOUNT DRIVES

find UUID of the disk
```
blkid
```
create mount point for disk
```
sudo mkdir /mnt/exdisk
```
open fstab
```
sudo nano /etc/fstab 
```
add line like this example (change UUID and others)
```
UUID=00cbbf18-9ece-4fac-8a00-412ef2b900cd /mnt/exdisk ext4 defaults,auto,users,rw,nofail 0 0 
```
mount all disks in the fstab file we just edited
```
sudo mount -a
```

## ALTERNATE COMMANDS

list all drives with mount points
```
df -ht ext4
```
explanation of above command
```
df      #list all drives with mount points
-h      #list sizes in human readable form
t ext4  #limit output for ext4 partition type
```


lsblk     # list all drives
sudo mount /dev/sdb1 /home/adam/_____
dmesg | grep wl     #messages, pipe to grep, filter on wl which is how linux names devices meant to connect to wireless lans
lshw    #list hardware
