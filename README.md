# 🛡️ UserGuard CLI

A modular Bash-based CLI tool for secure user and group management with backup and audit capabilities — perfect for sysadmins, DevOps learners, and Linux automation enthusiasts.

![License](https://img.shields.io/badge/license-MIT-green) ![Shell Script](https://img.shields.io/badge/language-Bash-blue) ![Status](https://img.shields.io/badge/status-Active-brightgreen)

---

## ⚙️ Features

- ✅ Create, delete, and list Linux users
- ✅ Manage user groups (create, delete, assign)
- ✅ Auto-backup `/home/` directory with timestamped `.tar.gz`
- ✅ Log every action with timestamps (`logs/user.log`, `logs/backup.log`)
- ✅ Clean, modular structure for easy extension

---

## 🧰 Directory Structure

UserGuard/
├── functions/
│ ├── user.sh # User creation/deletion logic
│ ├── group.sh # Group management logic
│ └── backup.sh # Backup automation
├── logs/
│ ├── user.log
│ ├── backup.log
│ └── backup_history.csv
├── backups/ # Auto-created backup directory
├── userguard.sh # Main CLI interface
├── .gitignore # Ignore logs & backups from version control
└── README.md


---

## 🚀 Usage

1. **Clone the repo**
   ```bash
   git clone https://github.com/yourusername/UserGuard.git
   cd UserGuard
   chmod +x userguard.sh

2. Run The CLI
  ./userguard.sh

3. Example operations
   [1] Create User
   [2] Delete User
   [3] Create Group
   [4] Assign Group
   [5] Backup Directory
   [6] Exit

📝 Logs & Backups
Every action is logged in detail inside the logs/ folder.

Backups are saved in the backups/ folder as backup_<timestamp>.tar.gz.

A backup_history.csv file tracks all backup events in CSV format.
