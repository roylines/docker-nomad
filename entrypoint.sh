#!/bin/bash
export IP=$(ip addr show eth0 | grep inet | grep global | awk '{ print $2 }' | awk -F / '{ print $1 }')
echo "Binding to eth0: $IP"
/usr/bin/nomad agent -dev -bind $IP
