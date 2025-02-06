# This script deletes files which are older than 90 days in a particualr directory
# Author : Rahul Singh
# Creation date : 06/02/25

#!/bin/bash
find /home/rahul/oldfilestesting -mtime +90 -exec rm {} \;
