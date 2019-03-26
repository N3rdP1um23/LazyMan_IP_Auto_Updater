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
LazymanHostsIP=''
LazymanCurrentIP=''

## Grab the current stored IP address and ping for the current one
LazymanHostsIP=`cat /etc/hosts | grep "#$LazymanURL-" | sed "s/#$LazymanURL-//g"`
LazymanCurrentIP=`dig +short $LazymanURL`

## Check if the Current IP is different than the stored one
if [ "$LazymanCurrentIP" != "$LazymanHostsIP" ]; then
    ## Update the Hosts File with the new IP
    echo "Updates Are Being Applied"
    sed -i "s/$LazymanHostsIP/$LazymanCurrentIP/g" /etc/hosts > cat /etc/hosts
else
    ## Display That the script is not updating
    echo "No Updates To Be Performed"
fi
