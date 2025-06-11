# cp    

used to copy a file or directory from origin to destination

## Usage
```sh
sudo cp -rv <fromfile> <tofile>
```

## Options

`–v`  verbose: shows the progress of multiple copied files
`–p`  preserve: keeps the same attributes, like creation date and file permissions
`–f`  force: force the copy by deleting an existing file first
`–i`  interactive: prompts for confirmation, highly advised
`–R` recursive: copies all files and subfolders in a directory
`–u` update: copy only if source is newer than destination
