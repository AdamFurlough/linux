# find

## Usage

`find / -name config.yaml`

## Options

### By Size

`find . -size 2220c`

`b` – 512-byte blocks (this is the default if no suffix is used)
`c` – bytes
`w` – two-byte words
`k` – Kilobytes
`M` – Megabytes
`G` – Gigabytes

## By Group

`find /home -group ftpusers`

`find directory-location -user {username} -name {file-name}`

### By Type

match files only
`find / -type f -user vivek -o -user wendy`

match dirs only
`find / -type d -user vivek -o -user wendy`

### Cleanup Output

Remove errors from results for easier reading
`2>/dev/null 2> file` 
redirects stderr to file /dev/null is a blackhole of no return...

