# How to Investigate Network Interfaces

## ip

`ip addr` - show all network interfaces
`ip -4 addr show` - shows only ip v4
`ip -4 a` - shortened version of above
`ip link show` - shows all active links

`ip a` - print ip address
`ip n` - ip and mac, like arp
`ip r` - routing table

## Misc

`ping arp -a` - prints ip address it is connecting to and the associated mac address
`route` - prints routing table
`netstat -ano`

