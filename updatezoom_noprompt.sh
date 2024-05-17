#!/bin/bash
#
# A short script to update zoom client for used as a cron job.
#
# "Feodra update script 0.1.1"
# "Copyright (C) YY."
# "This is free software: you are free to change and redistribute it."
# "There is NO WARRANTY, to the extent permitted by law."
# ""

#shift will flash the command line args
#shift $(($OPTIND -1))

#echo "This script will update zoom on Fedora/Centos/Redhat"
#read -n 1 -s -r -p "Press any key to continue"

wget -O zoom_x86_64.rpm https://zoom.us/client/latest/zoom_x86_64.rpm -P /tmp/
rpm -U /tmp/zoom_x86_64.rpm  

