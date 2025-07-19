#!/bin/bash

backup_dir() {
  local src="$1"
  local dest="$(pwd)/backups"
  local timestamp=$(date +"%Y%m%d_%H%M%S")

  mkdir -p "$dest"
  tar -czf "$dest/backup_$timestamp.tar.gz" "$src"

  echo "🗂️ Backup created: $dest/backup_$timestamp.tar.gz"
  echo "$(date): Backup of $src created at $dest/backup_$timestamp.tar.gz" >> logs/backup.log
echo "$timestamp,$src,$dest/backup_$timestamp.tar.gz" >> logs/backup_history.csv
}
