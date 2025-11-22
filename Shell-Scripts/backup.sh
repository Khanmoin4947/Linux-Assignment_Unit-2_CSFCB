#!/bin/bash
# Script Name: backup.sh
# Purpose: Backup a specific file with timestamp
# Author: Moin
# Date: $(date)

source_file="C:\Users\Moin\OneDrive\Pictures\Linux_assignment\picture\myphoto.png"
backup_dir="C:\Users\Moin\OneDrive\Pictures\Linux_assignment\backup"

mkdir -p "$backup_dir"

timestamp=$(date +%Y%m%d_%H%M%S)

backup_file="$backup_dir/myphoto_backup_$timestamp.png"

cp "$source_file" "$backup_file"

echo "Backup successful!"
echo "Original file: $source_file"
echo "Backup saved at: $backup_file"
