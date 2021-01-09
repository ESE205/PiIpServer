#!/bin/bash

echo "Please select a username for the IP service - URL SAFE CHARACTERS ONLY"
read username
echo "Please enter the password for the server specified by the professor"
read password

# TODO replace with 30
sleep 1

ip=$(hostname -I | cut -d' ' -f1)
curl "http://172.17.0.1:3000/ip-update/${password}/${username}/${ip}"

echo -e "\nVisit http:/172.17.0.1:3000/ to see your ip"