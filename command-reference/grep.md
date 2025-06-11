# grep

The grep command is used to search within text files. It can be used directly or pipe to it from other commands.

## Usage

### Direct

`grep <search term> <file>`

`grep example data.txt`

returns whole line with the search term

### Pipe to

`cat fileToSearchWithin.txt | grep word`

### Options

- `-v` - search for times does not occur / exclude word
- `-n` - show line numbers
- `-c` - show just count of times found
- `-i` - turn off case sensitivity
- `-r` - recursive, search all files within a directory
- `-d:` - use colon as delimiter
- `-f3` - means look at the third field


### Output

`cat /etc/group | grep > newfile` - overwrites findings to newfile

`cat /etc/group | grep >> newfile` - appends findings to the end of newfile

print binary files as text: `grep --text` or `grep -a`

`head` - print first 10 lines

`tail` - print last 10 lines

`cut -d: -f3 | sort -n`

`| sort -n` - means sort is ascending order (`-nr` would mean sort in descending order)

`wc fileName` - word count of "fileName"
