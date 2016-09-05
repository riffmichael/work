
#!/bin/bash
#grab IE 11, print sum
 grep -i rv:11 clients | sort -n -k 5| awk '{print $1, $8}'| awk '{ sum+=$1} END {print sum, "MSIE 11"}'
#print the IE versions
for i in $(grep -i msie clients | sort -n -k 5| awk '{print $1, $4, $5}'|sed 's/;//'|sort -u -k 3|awk '{print $3'});
do
grep -i msie clients | sort -n -k 5| awk '{print $1, $4, $5}'|sed 's/;//'| grep $i|awk '{ sum+=$1} END {print sum, $2, $3}'
done
#print the chrome versions
for i in $( grep Chrome\/ clients| awk '{print $1, $(NF-1)}'|sort -u -k 2|awk '{print $2'}|uniq -u);
do
grep Chrome\/ clients| awk '{print $1, $(NF-1)}'| grep $i|awk '{ sum+=$1} END {print sum, $2, $3}'
done
for i in $(grep -i firefox clients| awk '{print $1, $NF}'|sort -u -k 2|awk '{print $2'}|sed 's/"//');
do
grep -i firefox clients|grep $i| awk '{print $1, $NF}'| awk '{sum+=$1} END {print sum, $2}'|sed 's/"//'
done
#fin
cd ..
#fin

6248 Chrome/47.0.2526.106
43 Chrome/47.0.2526.111
28 MSIE 10.0
8598 MSIE 7.0
335 MSIE 8.0
54 MSIE 9.0
8480 MSIE 11.0
