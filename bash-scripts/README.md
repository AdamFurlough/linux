# bash

This repository contains personal scripts I have written to practice basic bash scripting as I work through various courses.

# Reference Notes:

## BASICS
scripts begin with: #!/bin/bash
file names should end in .sh
env = outputs all environment variables

## MATH
expr must be used before math expressions
example: expr 30 + 10

## IF STATEMENTS
if [ $mynum -eq 200 ]
then
    echo "the statement was true"
fi

### test command
use brackets to use the test command 
example: if [ -f ~/myfile ]

### file checks
-f checks for a file
-d checks for a directory

### command check
example: if command -v $command

## EXIT CODES
shows if the last command run was successful
echo $?
0 = successful
any other number = failed


## MISC
which htop    #checks for if this command is installed
sudo apt update && sudo apt install -htop    #make sure to run update before installing new packages
man    #manual pages for commands
