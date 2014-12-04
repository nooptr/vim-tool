#!bin/bash

# Create user with password generated random

PASSWORD=$(pwgen -y 10 1)

/usr/sbin/useradd $1

echo "--------- User information created ------------- "
echo "id: "$1" created"
echo "password: "$PASSWORD;
echo $PASSWORD | passwd --stdin $1

echo "id:"$1 >> log.txt
echo "pass:"$PASSWORD >> log.txt
echo "" >> log.txt
echo "-------- DONE! ----------------------"
