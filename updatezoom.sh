#!/bin/bash

while getopts xhv name 
do
        case $name in
          #x)xopt=1;;
          h)hopt=1;;
          v)vopt=1;;
          *)echo "Invalid arg";;
        esac
done

if [[ ! -z $hopt ]]
then
   echo "Usage updatescr [OPTION]..."
   echo "Update script"
   echo ""
   #echo "  -x  use ZZZ for calculations"
   echo "  -h  display this help and exit"
   echo "  -v  dispaly version information and exit"
   echo ""
   exit
fi

if [[ ! -z $vopt ]]
then
   echo "Feodra update script 0.1.1"
   echo "Copyright (C) YY."
   echo "This is free software: you are free to change and redistribute it."
   echo "There is NO WARRANTY, to the extent permitted by law."
   echo ""
   exit
fi


#shift will flash the command line args
shift $(($OPTIND -1))


echo "This script will update zoom on Fedora/Centos/Redhat"
read -n 1 -s -r -p "Press any key to continue"

wget -O zoom_x86_64.rpm https://zoom.us/client/latest/zoom_x86_64.rpm -P /tmp/
sudo rpm -U /tmp/zoom_x86_64.rpm  

