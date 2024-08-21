#!/bin/sh
set -e

# change this to the location where you put the .dl file:
#FIRMWARE=/usr/lib/sihpP1007.dl
DEVICE=/dev/usb/lp0
LOGFILE=/tmp/hp-log
#PRINTSERV=/etc/rc.d/S50p910nd

echo "$PRODUCT" >> $LOGFILE

if [ "$PRODUCT" = "3f0/c17/100" ]; then
    case "$ACTION" in
        add)
            echo "`date`: HP LaserJet 1010 added" >> $LOGFILE
            echo "`date`: STARTING" >> $LOGFILE
            if [ -c $DEVICE ]; then
                echo "`date`: Device $DEVICE found" >> $LOGFILE
                #echo "`date`: Sending firmware to printer..." >> $LOGFILE
                #cat $FIRMWARE > $DEVICE
            fi
            sleep 3
            #$PRINTSERV restart
            docker restart cups
            echo "`date`: Done" >> $LOGFILE
            ;;
        remove)
            docker stop cups
            echo "`date`: HP LaserJet 1010 removed" >> $LOGFILE
            echo "`date`: Done" >> $LOGFILE
            ;;
    esac
fi