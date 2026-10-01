#!/bin/bash

if [ "$EUID" -ne 0 ]; then
    echo "Please run this script with sudo"
    exit 1
fi

BACKUP_DIR="security-backup-$(date +%Y%m%d)"

mkdir -p "$BACKUP_DIR"

cp /etc/ssh/sshd_config "$BACKUP_DIR/"
cp /etc/fail2ban/jail.local "$BACKUP_DIR/" 2>/dev/null
ufw status verbose > "$BACKUP_DIR/ufw-status.txt"

echo "Security configuration backup created:"
echo "$BACKUP_DIR"
