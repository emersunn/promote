# Promote Standard Users to Admins on macOS
This script identifies all standard users on a macOS system and promotes them to admin users. It uses the dscl command-line utility to achieve this.

## ⚠️ Warning
Please use this script with caution, as promoting all users to admin privileges can lead to security risks and make your system more vulnerable. Ensure that you understand the implications before using this script.

## Prerequisites
- macOS system
- Terminal access
- Root or sudo access
## Installation
Clone the repository or download the script file promote_standard_users.sh to your local machine.
```
git clone https://github.com/emersunn/promote-standard-users-to-admins.git
```
## Usage
Run the script with root privileges:
```
sudo ./promote_standard_users.sh
```

The script will identify all standard users on your macOS system and promote them to admin users. You will see a message for each user being promoted, as well as for those who are already admins.
