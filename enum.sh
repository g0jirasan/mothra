#!/bin/bash

if test "$#" -ne 1; then
	echo "Invalid number of parameters"
	echo " "    
	echo "Usage: mothra.sh <output file>"
	echo " "
    	exit
fi

echo "################################################"
echo "######## Mothra Linux Enum by g0jirasan ########"
echo "################################################"
echo " "
echo "####### Mothra Enum #######" >> $1
echo " " >> $1
echo "[+]Getting Version"
echo " "
echo "------Version------" >> $1
echo " " >> $1
	
	cat /proc/version >> $1

echo " " >> $1
echo "[+]Running whoami"
echo " "
echo " " >> $1
echo "------WHOAMI------" >> $1
echo " " >> $1

	whoami >> $1

echo " " >> $1
echo "[+]Enumerating Sudoers"
echo " "
echo "------Sudoers------" >> $1

	cat /etc/sudoers >> $1

echo " " >> $1
echo "[+]Running ifconfig"
echo " "
echo "------IFCONFIG------" >> $1
echo " " >> $1

	ifconfig >> $1

echo " " >> $1
echo "[+]Reading Hosts File"
echo " "
echo "------Hosts File------" >> $1
echo " " >> $1

	cat /etc/hosts >> $1

echo " " >> $1
echo "[+]Gathering ARP info"
echo "------ARP------" >> $1
echo " "
echo " " >> $1

	/usr/sbin/arp -a  >> $1

echo " " >> $1
echo "[+]Gathering iptables info"
echo " "
echo "------IPTables------" >> $1
echo " " >> $1

	/sbin/iptables -L >> $1

echo " " >> $1
echo "[+]Gathering route info"
echo " "
echo "------Route Info------" >> $1
echo " " >> $1

	/sbin/route >> $1

echo " " >> $1
echo "[+]Reading /etc/passwd"
echo " "
echo "------/etc/passwd------" >> $1
echo " " >> $1

	cat /etc/passwd >> $1

echo "[+]Reading /etc/shadow"
echo " "
echo " " >> $1
echo "------/etc/shadow------" >> $1
echo " " >> $1

	cat /etc/shadow >> $1

echo " "  >> $1
echo "[+]Gathering SUID/SGID files"
echo " "
echo " " >> $1
echo "------SUID/SGID files------" >> $1
echo " " >> $1

	for i in `locate -r "bin$"`; do find $i \( -perm -4000 -o -perm -2000 \) -type f 2>/dev/null; done >> $1

echo " " >> $1


