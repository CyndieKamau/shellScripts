#!/bin/bash

#This shell script backs up specified directories and files to a backup location.
#It compresses the files and directories you want to back up and saves it in the backup location with a timestamp.

# Directories and files to back up
SOURCE="/home/hp/Downloads/Technovation.pdf"

# Backup destination
DESTINATION="/home/hp/Documents/backup/technovation"

# Current date and time
TIMESTAMP=$(date +"%Y%m%d-%H%M%S")

# Backup file name
BACKUP_FILE="backup-$TIMESTAMP.tar.gz"

# Create the backup
tar -czf "$DESTINATION/$BACKUP_FILE" $SOURCE

# Check the result
if [ $? -eq 0 ]; then
  echo "Backup successfully created: $DESTINATION/$BACKUP_FILE"
else
  echo "Error: Backup failed"
fi
