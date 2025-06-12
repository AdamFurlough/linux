# heredocs

Create a short text file directly from the command line.

```sh
cat > story.txt << END
Line1
Line2
END
```

`cat` Stands for "concatenate." While cat is often used to display the contents of files, when used with a redirection operator like >, it can also be used to create or overwrite files.

`>` This is the redirection operator. It takes the standard output of the command on its left (cat in this case) and redirects it to the file specified on its right (story.txt). If story.txt doesn't exist, it will be created. If it does exist, its contents will be overwritten.

`<<` This signifies the start of a here document.

`END` This is the delimiter. You can choose almost any string as a delimiter, but END, EOF (End Of File), or STOP are common conventions. The key is that this same string must appear alone on a new line to signal the end of the input.

`Line1` and `Line2` are the body of text being written to the file.

`END` (the second occurrence) This is the delimiter set on the first indicating the document is finished.