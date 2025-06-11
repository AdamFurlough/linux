# SSH

## initial setup
- install server (for security don't install server unless you need incomming sessions) ```apt install openssh-server```
- install client ```apt install openssh-client```


## configuration
- edit to manages systems host behavior ```/etc/ssh/sshd_config```
- how your system logs in as client on remote hosts ```/etc/ssh/ssh_config```

open files
- keys ```vi authorized_keys```
- config ```vi sshd_config```


## connect
- connect```ssh user@192.168.O.O``` 
- end connection ```exit```

options
- specify port```-p```
    - example: ```ssh -p 2222 user@192.168.O.O```
- point to specific key ```-i```
    - example: ```ssh -i /home/myusername/mykeyfile.pem user@192.168.O.O```

## scp
- scp ```scp update-local.sh user@192.168.O.O:/home/user```
