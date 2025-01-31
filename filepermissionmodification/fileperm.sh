#!/bin/bash
#author : Rahul Singh
#date : 31-01-25
#description : This script creates a file on user input and modifies permission on user input
#we can make changes into the script based on our requirement, we can also amend permission of existsing file inplace of creating a new one
echo "Please enter filename to be created:"
read filename
touch $filename
#display file permissions
ls -l $filename
#changing file permission
echo "Please enter the command to amend file permission: "
chmod a+x $filename
echo "Please display file with new permissions:"
ls -l $filename
