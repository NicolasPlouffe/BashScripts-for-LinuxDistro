#!/bin/bash

# Installer Flatpak
sudo apt install flatpak -y

# Installer le plugin GNOME Software pour Flatpak
sudo apt install gnome-software-plugin-flatpak -y

# Ajouter le dépôt Flathub si ce n'est pas déjà fait
flatpak remote-add --if-not-exists flathub https://dl.flathub.org/repo/flathub.flatpakrepo

# Redémarrer le système
sudo reboot
