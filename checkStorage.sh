#!/bin/bash

# Check storage on CentOS 7 HPC servers and generate a detailed report
echo "Generating storage report..."

df -hT --total | tee storage_report.txt
lsblk -o NAME,FSTYPE,SIZE,MOUNTPOINT,UUID | tee -a storage_report.txt

echo "Storage report saved to storage_report.txt"
