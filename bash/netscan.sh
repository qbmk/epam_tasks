#!/bin/bash

net_scan ()  
{  
    nbtscan $RANGE
}
host_scan ()
{  
    nmap $RANGE
}

RANGE=$2
case $1 in
--all) net_scan ;; 
--target) host_scan ;;
*) echo "usage: netscan.sh [--all|--target] (<scan_range>)" ;;
esac
