#!/bin/bash

# Liste des applications à installer
apps=(
    "org.onlyoffice.desktopeditors"
    "org.videolan.VLC"
    "com.obsproject.Studio"
    "fm.reaper.Reaper"
    "ch.theologeek.Manuskript"
    "com.tominlab.wonderpen"
    "com.google.Chrome"
    "com.brave.Browser"
    "com.discordapp.Discord"
    "com.skype.Client"
    "nz.mega.MEGAsync"
    "com.mattjakeman.ExtensionManager"
    "com.vixalien.sticky"
    "org.gimp.GIMP"
    "com.jgraph.drawio.desktop"
)

# Fonction pour afficher le menu
show_menu() {
    echo "-----------------------------------"
    echo "Flatpak Application Installer Script"
    echo "-----------------------------------"
    echo "This script will install the following applications:"
    
    for app in "${apps[@]}"; do
        echo "- $app"
    done
    
    echo "-----------------------------------"
}

# Fonction pour installer une application si elle n'est pas déjà installée
install_app() {
    app_id=$1
    if flatpak list | grep -q "$app_id"; then
        echo "$app_id is already installed."
    else
        echo "Installing $app_id..."
        flatpak install flathub "$app_id" -y
        if [ $? -eq 0 ]; then
            echo "$app_id installed successfully."
        else
            echo "Failed to install $app_id."
        fi
    fi
}

# Afficher le menu
show_menu

# Ajouter le dépôt Flathub si ce n'est pas déjà fait
flatpak remote-add --if-not-exists flathub https://dl.flathub.org/repo/flathub.flatpakrepo

# Installer chaque application de la liste
for app in "${apps[@]}"; do
    install_app "$app"
done

echo "All installations attempted."
