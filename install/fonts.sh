#!/usr/bin/env bash

set -e

echo "========================================="
echo "Installing Victor Mono Nerd Font..."
echo "========================================="

mkdir -p ~/.local/share/fonts

cd /tmp

wget -O VictorMono.zip \
https://github.com/ryanoasis/nerd-fonts/releases/latest/download/VictorMono.zip

unzip -o VictorMono.zip -d VictorMono

cp VictorMono/*.ttf ~/.local/share/fonts/

fc-cache -fv

rm -rf VictorMono
rm VictorMono.zip

echo ""
echo "Victor Mono Nerd Font installed."
