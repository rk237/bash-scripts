#!/bin/bash
#author: Rahul Singh
#date : 03-02-25
#description : this script checks and create a new user based on user input

#check if script is run as root
if [ "$EUID" -ne 0 ];
then
        echo "This script must be run as root. Use sudo"
        exit
fi

#input user name
echo "Enter username: "
read username

#checking if user already exists or not
grep - q $username /etc/passwd
if [ $? -eq 0 ];
then
        echo "Error --user $username already exists"
        echo "Please choose another username"
        echo
        exit 0
fi

# Prompt for password securely
read -s -p "Enter the password: " password
echo
read -s -p "Confirm the password: " password_confirm
echo

# Check if passwords match
if [[ "$password" != "$password_confirm" ]]; then
    echo "Passwords do not match. Try again."
    exit 1
fi

# Create the user
useradd -m -s /bin/bash "$username"

# Set the password
echo "$username:$password" | chpasswd

# Force password change on first login
#passwd --expire "$username"

echo "User '$username' has been created successfully and will be required to change the password on first login."
