#!/bin/bash

add_user() {
  local username="$1"
  if id "$username" &>/dev/null; then
    echo "❗ User $username already exists."
  else
    sudo useradd "$username"
    echo "✅ User $username added successfully."
    echo "$(date): User $username created" >> logs/user.log
  fi
}

delete_user() {
  local username="$1"
  if id "$username" &>/dev/null; then
    sudo userdel -r "$username"
    echo "🗑️ User $username deleted."
    echo "$(date): User $username deleted" >> logs/user.log
  else
    echo "❌ User $username does not exist."
  fi
}
