#!/bin/bash

# Directory you want to back up
SOURCE_DIR="."

# Backup destination
BACKUP_DIR="./backups"

# Generate filename with date
DATE=$(date +"%Y%m%d-%H%M%S")
BACKUP_FILE="backup-$DATE.tar.gz"

echo "📦 Creating backup..."
tar -czf $BACKUP_DIR/$BACKUP_FILE $SOURCE_DIR

echo "✅ Backup created: $BACKUP_DIR/$BACKUP_FILE"
