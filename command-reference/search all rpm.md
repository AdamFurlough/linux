# search rpm

rpm is the package manager.  Example: show `ssm-agent` already installed.

`sudo rpm -qa | grep amazon-ssm-agent`

`rpm  -qa` These are options given to the rpm command. 

`-q` stands for "query" 

`-a` stands for "all". 

When used together, `rpm -qa` queries all installed packages on the system.
