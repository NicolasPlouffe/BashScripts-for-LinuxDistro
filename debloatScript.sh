#!/bin/bash

# Liste des paquets à désinstaller
packages=(
    "aislerio"
    "gnome-chess"
    "five-or-more"
    "four-in-a-row"
    "hitori"
    "klotski"
    "libreoffice"
    "gnome-mahjongg"
    "gnome-mines"
    "gnome-music"
    "gnome-nibbles"
    "quadrapassel"
    "iagno"
    "gnome-robots"
    "gnome-sudoku"
    "swell-foop"
    "tali"
    "gnome-taquin"
    "gnome-tetravex"
)

# Fonction pour désinstaller et purger un paquet
uninstall_package() {
    if dpkg -l | grep -q $1; then
        echo "Désinstallation de $1..."
        sudo apt-get remove --purge $1 -y
    else
        echo "$1 n'est pas installé."
    fi
}

# Désinstallation de chaque paquet
for package in "${packages[@]}"
do
    uninstall_package $package
done

# Nettoyage final
echo "Nettoyage des paquets non nécessaires..."
sudo apt-get autoremove -y
sudo apt-get autoclean

echo "Désinstallation terminée."
