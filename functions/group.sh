#!/bin/bash

create_group() {
  local groupname="$1"
  if getent group "$groupname" > /dev/null; then
    echo "❗ Group $groupname already exists."
  else
    sudo groupadd "$groupname"
    echo "✅ Group $groupname created."
    echo "$(date): Group $groupname created" >> logs/group.log
  fi
}

add_user_to_group() {
  local username="$1"
  local groupname="$2"
  sudo usermod -aG "$groupname" "$username"
  echo "➕ Added $username to $groupname."
  echo "$(date): $username added to $groupname" >> logs/group.log
}
