#!bin/bash

# Delete account of user

/usr/sbin/userdel $1
rm -rf /home/$1
