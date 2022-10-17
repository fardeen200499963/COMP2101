#!/bin/bash

# name of user
nameOfUser=$(hostname --fqdn)

# name and version of operating system             
nameAndVersion=$(hostnamectl | grep -h "Opera")

# ip adreses     
ipAdres=$(ip a | grep global | awk '{print $2}')

# Storage Information
freeHumanReadableSpace=$(df -h / | grep "dev/sda" | awk '{print $4}')  

echo "Report for myvm
------------------
F Q D N:          $nameOfUser
$nameAndVersion
I P Adres:        $ipAdres
Root Free Space:  $freeHumanReadableSpace
------------------"