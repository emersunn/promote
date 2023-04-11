#!/bin/bash

# Ensure the script is run with root privileges
if [ "$(id -u)" != "0" ]; then
  echo "This script must be run as root or using sudo" 1>&2
  exit 1
fi

# Get a list of all users
all_users=$(dscl . -list /Users | grep -v "^_")

for user in $all_users; do
  # Check if the user is a standard user (not an admin)
  user_group=$(dscl . -read /Groups/admin GroupMembership | grep -w "$user")

  if [ -z "$user_group" ]; then
    echo "Promoting '$user' to admin..."
    # Promote the standard user to an admin
    dscl . -append /Groups/admin GroupMembership "$user"
  else
    echo "User '$user' is already an admin"
  fi
done

echo "All standard users have been promoted to admins"
