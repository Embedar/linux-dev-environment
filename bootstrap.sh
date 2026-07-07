#!/usr/bin/env bash

set -e

echo ""
echo "======================================="
echo " Linux Development Environment"
echo " Bootstrap"
echo "======================================="
echo ""

chmod +x install/*.sh

./install/apt.sh
./install/fonts.sh
./install/shell.sh

echo ""
echo "======================================="
echo "Bootstrap completed successfully!"
echo "Restart your terminal."
echo "======================================="
