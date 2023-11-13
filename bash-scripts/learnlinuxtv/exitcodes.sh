#!/bin/bash

package=htop

sudo apt install $package

if [ $? -eq 0 ]
then
    echo "The exit code for the package install is: $?"
    echo "The new command is available here:"
    which $package
else
    echo "$package failed to install"
fi
