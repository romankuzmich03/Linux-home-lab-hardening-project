#!/bin/bash

echo "=============================="
echo "System Update Check"
echo "=============================="

apt list --upgradable

echo ""
echo "Security packages:"
apt list --upgradable 2>/dev/null | grep security
