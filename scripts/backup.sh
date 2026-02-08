#!/bin/bash

SOURCE_DIR="/home/dany/important_date"
BUCKET_NAME="linux_backup-danysh-21"
BACKUP_NAME="backup_$(date +%Y-%m-%d).tar.gz

tar -czf "$BACKUP_name" " $SOURCE_DIR"

aws s3 cp "$BACKUP_NAME" "s3://$BUCKET_NAME/"
if[ $? -eq 0 ]; then
   rm "$BACKUP_NAME"
   echo "Backup Success: $(date)"
else
   echo "Backup failed: $(date)"
fi
