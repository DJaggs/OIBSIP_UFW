#!/bin/bash
# ufw_configuration.sh - Basic UFW firewall setup for Task 2
# Must be run with sudo/root privileges
# Usage: sudo ./ufw_configuration.sh

set -e

echo "[*] Installing UFW (if not already installed)..."
apt update -y
apt install ufw -y

echo "[*] Setting default policies: deny incoming, allow outgoing..."
ufw default deny incoming
ufw default allow outgoing

echo "[*] Allowing SSH (port 22) to avoid lockout..."
ufw allow 22/tcp

echo "[*] Denying HTTP (port 80)..."
ufw deny 80/tcp

echo "[*] Enabling UFW..."
ufw --force enable

echo "[*] Current firewall status:"
ufw status verbose

echo "[*] Done. Take a screenshot of the status above for your submission."
