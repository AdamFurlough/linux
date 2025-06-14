# HOW TO MOUNT DRIVES

1. find UUID of the disk using `blkid` or `lsblk -f`
2. create mount point for disk `sudo mkdir /mnt/exdisk`
3. open fstab `sudo nano /etc/fstab`
4. add line like this example (change UUID and others)

```sh
UUID=00cbbf18-9ece-4fac-8a00-412ef2b900cd /mnt/exdisk ext4 defaults,auto,users,rw,nofail 0 0 
```

5. mount all disks in the fstab file we just edited

```sh
sudo mount -a
```

6. list all drives to check that the disk mounted corectly

```sh
lsblk
```

## ALTERNATE COMMANDS

list all drives with mount points

```sh
df -ht ext4
```

explanation of above command

```sh
df      #list all drives with mount points
-h      #list sizes in human readable form
t ext4  #limit output for ext4 partition type
```

## MOUNT NETWORK DRIVES

- open file system tab `vim /etc/fstab`
- list shares for user ubuntu `smbclient -L 192.168.1.252 -U ubuntu`
- mount share to /mnt `sudo mount -t cifs -o vers=3.0,username=ubuntu '\192.168.1.252\media2' /mnt`
- mount share to /mnt `sudo mount -t cifs -o username=ubuntu //192.168.1.252/media2 /mnt`
