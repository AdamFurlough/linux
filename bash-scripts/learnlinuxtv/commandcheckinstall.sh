#!/bin/bash

# checks if the command specified by the variable is installed
# if it is not, the script installs it and then runs it

command=htop

if command -v $command
then
    echo "$command is available, let's run it..."
else
    echo "$command is NOT available, installing it..."
    sudo apt update && sudo apt install -y $command
fi

$command
