#!/bin/bash

# dlstatus.sh

#the variable DROPLETS will ping all available droplets and this establishes the list 
DROPLETS="dl01 dl02 dl03 dl04 dl05 dl06 dl07 dl08 dl09 dl10 dl11"

#the droplet iteration loop
for DROPLETS in $DROPLETS ; do
              # this is where the droplets will each be pinged 
              ping -c 1 -t 1 $DROPLETS >/dev/null
              # this is where the droplet staus is echoed (alive or dead)
              if [ $? -eq 0 ] ; then 
                       echo "$DROPLETS : alive" 
              else 
		       echo "$DROPLETS : dead"
              fi 

done

exit 0
