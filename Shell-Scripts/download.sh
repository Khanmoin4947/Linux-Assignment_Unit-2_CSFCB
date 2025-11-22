#!/bin/bash
# Script Name: download.sh
# Purpose: Download GitHub repositorie 
# Author: Moin khan
# Date: $(date)

REPO1="https://github.com/Khanmoin4947/KRMU_Web_Dev_Assignment" 

DEST_DIR="/home/moinkhan/Downloads/github_repos" 
mkdir -p "$DEST_DIR"

echo "Starting download of repositories..."
cd "$DEST_DIR"
wget -O repo1.zip "$REPO1/archive/refs/heads/main.zip"


echo "downloads complete!"
