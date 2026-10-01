#!/bin/bash

echo "================================="
echo " Linux Security Check "
echo "================================="

echo ""
echo "[1] SSH Service"
systemctl is-active ssh

echo ""
echo "[2] SSH Hardening Configuration"
sudo sshd -T | grep -E "passwordauthentication|permitrootlogin"

echo ""
echo "[3] Firewall Status"
sudo ufw status verbose

echo ""
echo "[4] Fail2ban SSH Protection"
sudo fail2ban-client status sshd

echo ""
echo "[5] Listening Network Ports"
ss -tuln

echo ""
echo "[6] Current User"
whoami

echo ""
echo "[7] Sudo Privileges"
sudo -l
