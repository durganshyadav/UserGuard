#!/bin/bash

# Load functions
source functions/user.sh
source functions/group.sh
source functions/backup.sh

# Check root access
if [[ "$EUID" -ne 0 ]]; then
  echo "❌ Please run as root"
  exit 1
fi

# CLI Interface
case "$1" in
  --add-user)
    add_user "$2"
    ;;
  --delete-user)
    delete_user "$2"
    ;;
  --create-group)
    create_group "$2"
    ;;
  --add-to-group)
    add_user_to_group "$2" "$3"
    ;;
  --backup)
    backup_dir "$2"
    ;;
  --help|*)
    echo "🔧 UserGuard - CLI Tool
Usage:
  --add-user <username>
  --delete-user <username>
  --create-group <groupname>
  --add-to-group <username> <groupname>
  --backup <directory>
  --help"
    ;;
esac
