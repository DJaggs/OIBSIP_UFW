# Task 2: Basic Firewall Configuration with UFW

## 📌 Objective
Configure a basic firewall on a Linux system using **UFW (Uncomplicated Firewall)**: allow SSH, deny HTTP, and verify the active rule set.

## 🛠️ Tools Used
- UFW (Uncomplicated Firewall) on Ubuntu/Debian

## 📂 Repository Contents
| File | Description |
|---|---|
| `ufw_configuration.sh` | Script that installs and configures UFW rules |
| `screenshots/` | Screenshot(s) of `ufw status` output (add your own) |
| `README.md` | This file |

## 🚀 Steps to Reproduce

### 1. Install UFW
```bash
sudo apt update
sudo apt install ufw -y
```

### 2. Run the configuration script
```bash
chmod +x ufw_configuration.sh
sudo ./ufw_configuration.sh
```

This script will:
1. Set default policies (deny incoming, allow outgoing)
2. Allow SSH (port 22) so you don't lock yourself out
3. Deny HTTP (port 80)
4. Enable UFW
5. Print the current status/rules

### 3. Verify manually (optional)
```bash
sudo ufw status verbose
sudo ufw status numbered
```

### 4. Take a screenshot
Capture the output of `sudo ufw status verbose` showing the active rules and save it to `screenshots/`.

## 📋 Rule Summary

| Rule | Action | Reasoning |
|---|---|---|
| Default incoming | Deny | Block all unsolicited inbound traffic by default (deny-by-default posture) |
| Default outgoing | Allow | Permit the host to initiate normal outbound connections |
| Port 22 (SSH) | Allow | Needed for remote administration — without this rule enabling UFW could lock you out |
| Port 80 (HTTP) | Deny | Blocks unencrypted web traffic to this host, forcing more secure alternatives |

## ⚠️ Important Safety Note
Always allow SSH **before** enabling UFW on a remote machine (e.g. a cloud VM), otherwise you may lose remote access entirely.

## 🎥 Demo Video
"Configuring a Basic Firewall Using UFW on Ubuntu" — add your video link here once recorded.

## ✅ Internship Requirement
This task fulfills **Task 2 – Beginner Level** of the Oasis Infobyte Cybersecurity Internship.
