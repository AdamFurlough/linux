# ps

process

## usage

`ps` - shows processes running in current terminal
`ps aux` - most common variation of the command, shows common name of what user the process is running on in first column

## how to read output

`PID` - process ID (e.g. 9594)
`TTY` - terminal that it is running in
`TIME` - how much time it used the cpu (e.g. 00:00:00)
`CMD` - command (e.g. bash)

## different option styles

`ps -aux` - unix style options
`ps aux` - bsd style options
`ps --quick-pid 2925` - gnu style options`

`ps x` - show processes running in all terminals
`?` - means process was started by the system

indents show parent processes
`ps -axjf` - show lines to aid in seeing parent processes
