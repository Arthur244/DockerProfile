#!/bin/sh
set -e

# change this to the location where you put the .dl file:
#FIRMWARE=/usr/lib/sihpP1007.dl
DEVICE=/dev/usb/lp0
LOGFILE=/tmp/hp-log
#PRINTSERV=/etc/rc.d/S50p910nd
#echo "`date`: HP LaserJet 1010 insert `$DEVICE``date`" >> $LOGFILE
if [ "$ACTION" = add ]; then
    echo "`date`: HP LaserJet P1007 added" >> $LOGFILE
    docker restart cups
fi