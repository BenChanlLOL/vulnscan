#!/bin/bash
clear

echo "do you have nmap?(y/n)"
read ans

if [[ $ans == "n" ]]; then 
	sudo apt install nmap
else 
	echo "good,lets start" && bash vulnscan.sh

fi

bash vulnscan.sh
