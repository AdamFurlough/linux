# How to redirect output

`stdout` = when a command is successful
`>` to overwrite and `>>` to append
example: `ls -l /etc/hosts > error`

`stderr` = when a command errors
2> to overwrite and 2>> to append
example: `ls -l /etc/Hosts 2> error`

both
`&>` to overwrite and `&>>` to append
example: `ls -l /etc/hosts /etc/Hosts &> log`
