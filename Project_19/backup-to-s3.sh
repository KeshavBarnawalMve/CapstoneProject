#!/bin/bash

TIMESTAMP=$(date +"%Y%m%d-%H%M%S")

LOG_SOURCE="/var/log/project19"

PROJECT_DIR="$HOME/Desktop/CapstoneProject/Project_19"

BACKUP_DIR="$PROJECT_DIR/backups"

STATUS_LOG="$PROJECT_DIR/backup.log"

BUCKET_NAME=$(cat "$PROJECT_DIR/bucket-name.txt")

ARCHIVE_NAME="logs-backup-$TIMESTAMP.tar.gz"

mkdir -p "$BACKUP_DIR"

echo "[$(date)] Starting backup..." >> "$STATUS_LOG"

tar -czf "$BACKUP_DIR/$ARCHIVE_NAME" "$LOG_SOURCE" 2>>"$STATUS_LOG"

if [ $? -ne 0 ]; then
    echo "[$(date)] Archive creation failed" >> "$STATUS_LOG"
    echo "Backup Failed"
    exit 1
fi

aws s3 cp "$BACKUP_DIR/$ARCHIVE_NAME" \
s3://$BUCKET_NAME/$TIMESTAMP/$ARCHIVE_NAME

if [ $? -eq 0 ]; then
    echo "[$(date)] Upload successful" >> "$STATUS_LOG"
    echo "Backup Successful"
else
    echo "[$(date)] Upload failed" >> "$STATUS_LOG"
    echo "Backup Failed"
fi
