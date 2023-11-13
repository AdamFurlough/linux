#!/bin/bash

# checks for the existance of a file
if [ -f ~/myfile ]
then 
    echo "the file exists."
else
    echo "the file does not exists."
