#!/bin/bash

# name of user
echo "name? $(hostname)"

# all information about user machine
echo "-- full information ---"
hostnamectl
echo "-- full information ends ---"


# name and version of operating system
hostnamectl | grep -h "Opera"

# ip adreses
echo "ip adres"
hostname -I


# free storage in human readable form
echo "-- storage --- "
df -h | grep -h "/dev/"


