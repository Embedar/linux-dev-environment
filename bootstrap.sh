#!/bin/bash

echo "🚀 Iniciando configuración de mi entorno Linux..."

# Colores para output
GREEN='\033[0;32m'
NC='\033[0m'

echo -e "${GREEN}📦 Instalando paquetes básicos...${NC}"
sudo apt update
sudo apt install -y git curl wget vim htop tree

echo -e "${GREEN}✅ Bootstrap completado!${NC}"
