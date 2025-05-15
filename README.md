# Network Troubleshooting Toolkit

This repository contains a collection of basic network troubleshooting scripts and command-line tools useful for NOC engineers, support teams, and system/network administrators. These tools are designed to quickly diagnose network issues in Linux and Windows environments.

## 📁 Contents

### 🔧 Scripts
- `network_check.sh` – Bash script for basic connectivity and DNS tests.
- `port_scanner.ps1` – PowerShell script to check if a specific port is open.
- `dns_validator.py` – Python script to validate DNS records (A, CNAME).

### 🧾 CLI Cheat Sheet
- `network_commands_cheatsheet.md` – Common Linux/Windows networking commands with examples.

---

## 📜 network_check.sh (Linux)
Performs ping, DNS resolution, and default gateway tests.

```bash
#!/bin/bash
echo "Testing internet connectivity..."
ping -c 4 8.8.8.8

echo "Checking DNS resolution..."
nslookup google.com

echo "Default Gateway:"
ip route | grep default
