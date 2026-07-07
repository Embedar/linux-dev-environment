#!/usr/bin/env bash

set -e

PACKAGE_FILE="$(dirname "$0")/../packages/apt.txt"

echo "========================================="
echo "Installing APT packages..."
echo "========================================="

sudo apt update

while read -r package
do

    [[ -z "$package" || "$package" =~ ^# ]] && continue

    if dpkg -s "$package" >/dev/null 2>&1; then
        echo "[OK] $package already installed."
    else
        echo "[INSTALL] $package"
        sudo apt install -y "$package"
    fi

done < "$PACKAGE_FILE"

echo ""
echo "APT packages installed."
