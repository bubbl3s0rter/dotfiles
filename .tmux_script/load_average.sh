#!/bin/bash
#uptime | awk -F'( |,)+' '{print $9,$10,$11}'
cat /proc/loadavg | awk '{print $1, $2, $3}'
