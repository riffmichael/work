ls -las | grep felix| awk '{print $12}'|awk -F'/' '{print $9}'|sed 's/bundle//'| sort | uniq -c > /tmp/bundlefilenumbers.txt
