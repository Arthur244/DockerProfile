#!/bin/sh
set -e

# change this to the location where you put the .dl file:
FIRMWARE=/usr/lib/sihpP1007.dl
DEVICE=/dev/usb/lp0
LOGFILE=/tmp/hp-log
PRINTSERV=/etc/rc.d/S50p910nd

if [ "$PRODUCT" = "3f0/4817/100" ]; then
    case "$ACTION" in
        add)
            echo "`date`: HP LaserJet P1007 added" >> $LOGFILE
            echo "`date`: STARTING" >> $LOGFILE
            if [ -c $DEVICE ]; then
                echo "`date`: Device $DEVICE found" >> $LOGFILE
                echo "`date`: Sending firmware to printer..." >> $LOGFILE
                cat $FIRMWARE > $DEVICE
            fi
            sleep 3
            $PRINTSERV restart
            echo "`date`: Done" >> $LOGFILE
            ;;
        remove)
            echo "`date`: HP LaserJet P1007 removed" >> $LOGFILE
            echo "`date`: Done" >> $LOGFILE
            ;;
    esac
fi