# HOW TO MOUNT DRIVES

open fstab
```
sudo nano /etc/fstab 
```
add line like this example (change UUID and others)
```
UUID=5a89e403-8061-4aa5-919f-4df66ad2072f /mnt/exdisk ext4 defaults,auto,users,rw,nofail 0 0 
```

=======================================================

df -ht ext4
df                #list all drives with mount points
-h                #list sizes in human readable form
t ext4           #limit output for ext4 partition type


sudo blkid    #list drives with ids

edit fstab
```
/dev/sda1: LABEL="hdd" UUID="5a89e403-8061-4aa5-919f-4df66ad2072f" TYPE="ext4" PARTUUID="2292c551-1a7e-47fe-b7b5-88c51196a6fd"
```


lsblk     # list all drives
sudo mount /dev/sdb1 /home/adam/_____
dmesg | grep wl     #messages, pipe to grep, filter on wl which is how linux names devices meant to connect to wireless lans
lshw    #list hardware
