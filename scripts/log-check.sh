#!/bin/bash

LOG="/var/log/auth.log"

echo "================================="
echo " Linux Authentication Log Report "
echo "================================="

echo ""
echo "[1] Failed SSH login attempts:"
grep "Failed password" "$LOG" | grep -v "COMMAND" | wc -l


echo ""
echo "[2] Top source IPs with failed logins:"
grep "Failed password" "$LOG" | grep -v "COMMAND" | awk '{print $(NF-5)}' | sort | uniq -c | sort -nr


echo ""
echo "[3] Successful SSH logins:"
grep "Accepted" "$LOG" | grep -v "COMMAND"


echo ""
echo "[4] Recent sudo activity:"
grep "sudo:" "$LOG" | tail -10
