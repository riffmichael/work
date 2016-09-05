#!/bin/bash
#watch tcpdump, when change do stuff

### Set initial time of file
LTIME=`stat -c %Z /tmp/arp.txt`

while true    
do
   ATIME=`stat -c %Z /tmp/arp.txt`

   if [[ "$ATIME" != "$LTIME" ]]
   then    
#espeak "danger will robinson"       
firefox https://www.youtube.com/watch?v=dQw4w9WgXcQ
       LTIME=$ATIME
   fi
   sleep 5
done
