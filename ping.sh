#!/bin/bash

echo "Please select a username for the IP service - URL SAFE CHARACTERS ONLY"
read username

# TODO replace with 30
sleep 1

ip=$(hostname -I)
curl "http://52.32.182.202:3000/ip-update/${username}/${ip}"

echo -e "\nVisit http://52.32.182.202:3000/ to see your ip"