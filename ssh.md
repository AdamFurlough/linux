#SSH

## initial setup
server 
(for security don't install server unless you need incomming sessions)
```apt install openssh-server```

client
```apt install openssh-client```

##cofiguration
```/etc/ssh/sshd_config``` edit to manages systems host behavior
```/etc/ssh/ssh_config```    # how your system logs in as client on remote hosts

open files
```vi authorized_keys```
```vi sshd_config```

## connect
connect ```ssh user@192.168.O.O```
end connection ```exit```

specify port```-p```
example: ```ssh -p 2222 user@192.168.O.O```

point to specific key ```-i```
example: ```ssh -i /home/myusername/mykeyfile.pem user@192.168.O.O```

## scp
```scp update-local.sh user@192.168.O.O:/home/user```
