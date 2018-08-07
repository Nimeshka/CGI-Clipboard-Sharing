#!/usr/bin/env bash

# get the connected interface name of the host
interface_name=$(ip addr show | awk '/inet.*brd/{print $NF; exit}')

# get the IP address for the interface
ip_address=$(ifconfig $interface_name | grep 'inet addr' | sed -e 's/:/ /' | awk '{print $3}')

# default port
port=8000

echo 'Starting clipboard service..'
echo 'Please access '$ip_address':'$port'/sync.sh from any LAN device to copy.'
echo 'CTRL + C to quit!'

# start the python CGI server on default port
python server.py $port