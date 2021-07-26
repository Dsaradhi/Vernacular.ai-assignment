#!/bin/bash
echo -e "-------------------------------System Information----------------------------"
echo -e "Operating System:\t""$(hostnamectl )"
echo -e "Kernel:\t\t\t""$(uname -r)"
echo -e "Architecture:\t\t""$(arch)"
echo -e "Processor Name:\t\t""$(awk -F':' '/^model name/ {print $2}' /proc/cpuinfo | uniq | sed -e 's/^[ \t]*//')"
echo ""
echo -e "-------------------------------CPU/Memory Usage------------------------------"
echo -e "Memory Usage:\t""$(free -m)"
echo -e "CPU Usage:\t""$(cat /proc/stat)"
echo -e "CPU Architecture:\t""$(lscpu)"
echo -e "---------------------------------CPU Clock speed--------------------------------------------------------------"
hwinfo --cpu
echo""
echo -e "-------------------------------Disk Usage -------------------------------"
df -m
echo ""
echo -e "-------------------------------Networking--------------------------------"
netstat -tulpn 
echo""
