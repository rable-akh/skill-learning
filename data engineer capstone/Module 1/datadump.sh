#!/bin/bash

DB_HOST="172.21.96.189"
DB_USER="root"
DB_PASS="dJAHbtKcUIyClGxkaQBHvnO7"
DB_NAME="sales"
BACKUP_DIR="/home/project/backup/sales_data.sql"
BACKUP_FILE="$BACKUP_DIR"

mkdir -p "$BACKUP_DIR"

mysqldump -h "$DB_HOST" -u "$DB_USER" -p"$DB_PASS" "$DB_NAME" > "$BACKUP_FILE"

if [ $? -eq 0 ]; then
  echo "Backup successful: $BACKUP_FILE"
else
  echo "Backup failed"
fi