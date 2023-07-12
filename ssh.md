# initial setup
server (for security don't install server unless you need incomming sessions)
```apt install openssh-server```

client
```apt install openssh-client```

cofiguration
```/etc/ssh/sshd_config``` edit to manages systems host behavior
```/etc/ssh/ssh_config```    # how your system logs in as client on remote hosts

connect ```ssh user@192.168.O.O```
end connection ```exit```

-p    # specify port
ssh -p 2222 ubuntu@192.168.1.97

-i    # point to key (needed for aws ec2)
ssh -i /home/myusername/mykeyfile.pem ubuntu@192.168.1.97

scp

scp update-local.sh ubuntu@192.168.1.97:/home/ubuntu


## Change files
```vi authorized_keys```
```vi sshd_config```
