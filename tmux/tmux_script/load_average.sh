#!/bin/bash
uptime | awk -F'( |,)+' '{print $9,$10,$11}'
