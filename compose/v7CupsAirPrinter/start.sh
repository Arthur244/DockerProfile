docker run \
       -d \
       --restart=always \
       --name=cups \
       --net=host \
       -v /var/run/dbus:/var/run/dbus \
       --device /dev/bus \
       --device /dev/bus/usb \
       -e CUPSADMIN="admin" \
       -e CUPSPASSWORD="admin" \
       tigerj/cups-airprint