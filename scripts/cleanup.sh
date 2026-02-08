#!/bin/bash

LOG_FILE="/var/log/daily_cleanup.log"

echo "Staring Cleanup: $(date)" >> $LOG_FILE

echo "Cleaning apt cache..." >> $LOG_FILE
apt-get clean  >> $LOG_FILE 2>&1

echo "Removing old logs (>30 days)..." >> $LOG_FILE
find /var/log -name "*.gz" -type f-mtime +30 -delete >> $LOG_FILE 2>&1

echo "Vacuuming Journal Logs..." >> &LOG_FILE
journalctl --vacuum-size=100M >> $LOG_FILE 2>&1

echo "Cleanup Finished: $(date)" >> $LOG_FILE
echo "------------------------------------" >> $LOG_FILE
