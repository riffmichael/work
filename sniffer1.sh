#!/bin/bash
#amazon dash sniffer
sudo tcpdump "ether host ac:63:be:c3:69:ce" -vle -i eno16777736 | tee /tmp/arp.txt
