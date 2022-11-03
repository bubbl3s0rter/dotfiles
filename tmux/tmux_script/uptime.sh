#!/bin/bash
uptime | awk -F'( |,)+' '{print $4}'
