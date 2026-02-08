# Linux Admin Toolkit 

## Overview
A collection of Bash scripts for automated Linux system maintenance and cloud backups.

## Contents
* **scripts/cleanup.sh:** Automates `apt` cache cleaning, log rotation, and systemd journal vacuuming.
* **scripts/backup.sh:** Compresses critical data and uploads to AWS S3.

## Automation
These scripts are designed to be scheduled via `cron`.
