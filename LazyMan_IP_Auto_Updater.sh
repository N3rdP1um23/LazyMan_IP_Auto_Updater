#!/bin/bash


#################################################
#                                               #
#               N3rdP1um23                      #
#            November 1, 2017                   #
#            Lazyman IP Update                  #
#                                               #
#       This script is used to update           #
#      the Lazyman IPs in the hosts file        #
#                                               #
#################################################


## Variables
LazymanURL='powersports.ml'
LazymanHosts=''
LazymanCurrent=''

## Grab the current stored IP address and ping for the current one
LazymanHosts=`cat /etc/hosts | grep "#$LazymanURL-" | sed "s/#$LazymanURL-//g"`
LazymanCurrent=`dig +short $LazymanURL`

## Check if the Current IP is different than the stored one
if [ "$LazymanCurrent" != "$LazymanHosts" ]; then
    ## Update the Hosts File with the new IP
    echo "Updating Are Being Applied"
    sed -i "s/$LazymanHosts/$LazymanCurrent/g" /etc/hosts > cat /etc/hosts
else
    ## Display That the script is not updating
    echo "No Updated To Be Performed"
fi
