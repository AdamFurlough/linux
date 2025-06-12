# users and groups

`who` - list all users

`w` - list all current users and what they are doing

`last` - last login

## create a new user

`sudo useradd -m newUserName` - creates new user (`-m` creates new home directory for them)

`/etc/skel` - contains files that will automatically be added to new user home directories

`sudo passwd` - change new userspassword

`su jane` - switch user account to "Jane"

## groups

`sudo groupadd secret-group` - create a new group named groupName
    
`sudo chown :secret-group /var/secret` - changes ownership of /var/secret to the group named "secret-group"

`sudo usermod -a -G secret-group adam` - add user adam to secret-group

`-a` - add

`-G` - to an existing group

`sudo chmod g+w /var/secret` - add write permissions to group directory
