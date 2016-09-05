#!/bin/bash

for i in `seq 1 9`;
do
if [ $i -lt 10 ]; then
docker run --name zeppelin-$i -i -d -p 2500$i:8080 zepp /bin/bash
docker exec zeppelin-$i /usr/local/zeppelin-0.5.5-incubating-bin-all/bin/zeppelin-daemon.sh restart
fi

done
