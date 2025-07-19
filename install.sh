#!/bin/bash

# Script de instalación para dotfiles de Hyprland en Arch Linux

# --- Verificación de dependencias --- 
if ! command -v git &> /dev/null
then
    echo "Git no está instalado. Por favor, instálalo antes de continuar."
    exit
fi

# --- Instalación de dependencias --- 
echo "Instalando dependencias..."

sudo pacman -Syu --noconfirm

sudo pacman -S --noconfirm \
    hyprland \
    hyprpaper \
    hyprlock \
    waybar \
    rofi \
    kitty \
    dolphin \
    qt5-wayland \
    qt6-wayland \
    qt5ct \
    kvantum \
    pipewire \
    wireplumber \
    xdg-desktop-portal-hyprland \
    polkit-kde-agent \
    swaync \
    cliphist \
    wl-clipboard \
    noto-fonts \
    noto-fonts-cjk \
    noto-fonts-emoji \
    noto-fonts-extra \
    ttf-jetbrains-mono-nerd

# --- Copia de archivos de configuración ---
echo "Copiando archivos de configuración..."

cp -r config/* ~/.config/

echo "¡Instalación completada! Por favor, reinicia tu sesión para que los cambios surtan efecto."


