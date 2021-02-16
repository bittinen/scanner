#!/bin/bash
#date >> /root/devices.txt
name=/root/scans/`date +"%H%M-%d%m%Y"`.txt
#echo $name
for i in `seq 1 255` ; do sudo nmap -sn 192.168.10.$i| grep 'report for' | sed -n -e 's/^.*for //p' >> $name; done
