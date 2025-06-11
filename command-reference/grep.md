grep 'search term' data.txtreturns whole line with the search term
searches within text files
can use directly or pipe to it from other commands

grep  word  fileToSearchWithin.txt
cat  fileToSearchWithin.txt  |  grep word

-v    search for times does not occur / exclude word
-n    show line numbers
-c    show just count of times found
-i    turn off case sensitivity
-r    recursive, search all files within a directory

print bianary files as text:    grep --text    or    grep -a

cat /etc/group | grep > newfile    # overwrites findings to newfile
cat /etc/group | grep >> newfile    # appends findings to the end of newfile

head    # print first 10 lines
tail    # print last 10 lines

cut -d: -f3 | sort -n

-d: means use colon as delimiter

-f3 means look at the third field

| sort -n means sort is ascending order (-nr would mean sort in descending order)

wc fileName   # word count of "fileName"
