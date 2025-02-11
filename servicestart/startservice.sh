#!/bin/bash
#author : Rahul Singh
#date : 11-02-25
#description : this script enables start of docker service on server reboot
#defining service name to be enabled on boot up
service=docker
#checking if script has root permission
if [ "$EUID" -ne 0 ]
then
        echo "Please run the script as root"
        exit
fi

echo "enabling service `systemctl enable $service` "
echo "starting service `systemctl start $service` "
echo "service status `systemctl status $service` "
if [ "$service" -eq "active" ]
then
        echo "$service is up and running"
        else:
                echo " $service is not running"
fi
