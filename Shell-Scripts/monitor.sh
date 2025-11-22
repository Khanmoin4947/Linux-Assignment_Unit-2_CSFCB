#!/bin/bash
# Script Name: monitor.sh
# Purpose: Log CPU and memory usage every 5 seconds
# Author: Moin khan
# Date: $(date)

LOG_FILE="/home/moinkhan/usage_log.txt"
INTERVAL=5    
while true; do
  timestamp=$(date '+%Y-%m-%d %H:%M:%S')


  cpu=$(top -bn1 | grep "Cpu(s)" )

  memory=$(free | grep Mem | awk '/Mem/ {printf "%.2f", $3/$2 * 100.0}')

  echo "$timestamp,$cpu,$memory" >> "$LOG_FILE"
  
  sleep "$INTERVAL"
done