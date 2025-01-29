#!/bin/bash
#author : Rahul Singh
#date : 29/01/25
#description : This scripts backups and archive a file with the date and time of it's backup
#getting the current date and time of system
backup_date=$(date '+%d-%m-%y_%H_%M_%S')
#I have already created a directory called backup, you can create a directory within this script
#mkdir -p dirname
destination="/home/rahul/backups/errorlogfilebackup-$backup_date.tar.gz"
tar czf "$destination" /home/rahul/errorlogfile.txt
echo "the backup of logfile is stored in $destination"
