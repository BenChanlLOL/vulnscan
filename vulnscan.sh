#!/bin/sh

echo "developed by tztedtrzh"
	sleep 1

clear 
	echo "what is the target's IP?"
read IP
clear
	echo "loading..."
sleep 1
	echo ".."
sleep 1
	echo "....."
sleep 1 
	echo "......."
sleep 3

echo "there are 2 options..."
sleep 2
clear
	echo "1. scan ports and vuln"
	
	echo "2. scan network for devices"

read ans

if [[ $ans == "1" ]]; then
	sudo nmap -sV --script vuln $IP
else
	sudo nmap -D google.com -sn $IP/24 

fi

