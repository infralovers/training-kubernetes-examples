#!/bin/bash

ip=$(curl -s http://169.254.169.254/latest/meta-data/local-ipv4)

echo "$ip $HOSTNAME ${HOSTNAME%%.*}" >> /etc/hosts
