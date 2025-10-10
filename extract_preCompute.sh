#!/bin/bash

# WEIS Workshop - Simple Extract Script for Offline Participants
# Usage: Place the archive file in this directory and run this script

ARCHIVE_NAME="archive_weisWorkshop_OCT25.tar.gz"

# Check if archive file exists
if [ ! -f "$ARCHIVE_NAME" ]; then
    echo "Error: $ARCHIVE_NAME not found in current directory"
    echo "Please download the archive file and place it here first"
    exit 1
fi

echo "Extracting workshop files..."
tar -xvzf "$ARCHIVE_NAME"

if [ $? -eq 0 ]; then
    echo "Extraction completed successfully!"
    echo "Workshop files are now ready to use"
else
    echo "Error: Extraction failed"
    exit 1
fi