#!/bin/bash

echo "=============================="
echo "Student Information"
echo "=============================="
echo "Name: Yersultan"
echo "Surname: Usenkhan"
echo "Group: IT2-2310"
echo "Student ID: 38064"
echo "=============================="
echo "System Information"
echo "=============================="
echo "Username: $(whoami)"
echo "Hostname: $(hostname)"
echo "Current Date: $(date)"
. /etc/os-release
echo "Operating System: $PRETTY_NAME"
echo "Disk Usage: $(df -h / | awk 'NR==2 {print $3 " used of " $2 " (" $5 ")"}')"
echo "Memory Usage: $(free -h | awk '/Mem:/ {print $3 " used of " $2}')"

if [ -f "$HOME/devops/usenkhan_yersultan/Usenkhan_Yersultan_info.txt" ]; then
    echo "Student information file exists."
else
    echo "Student information file does not exist."
fi
