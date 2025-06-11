# mv

mv is used to move and/or rename files or directories

## Usage

`mv old/location/name new/location/name`

## Regex

`*` - refers to any number of characters, * = all files, *files = all files begining with "files"
`?` - refers to any character but only a single instance, used on its own would only be files with a single character name, files? = would have exactly 6 characters

## Examples

`rm file*` - removes all files that begin with "file" no matter how many characters follow
`rm file?` - removes all files that begin with "file" and have one charater after in the name.  e.g. fileA would be deleted but file456 would not be.
`mv ../file* .`    # moves all file* from directory above to current directory