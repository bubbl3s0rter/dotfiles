#!/bin/bash
# ip -o addr show scope global | tr -s ' ' | tr '/' ' ' | cut -f 2,4 -d ' ' | grep eth0
hostname -I | awk '{print $1}'
