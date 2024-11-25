#!/bin/bash

# Vérifier si le script est exécuté avec les privilèges root
if [ "$(id -u)" != "0" ]; then
   echo "Ce script doit être exécuté en tant que root" 1>&2
   exit 1
fi

# Obtenir le nom de l'utilisateur courant
CURRENT_USER=$(logname)

# Ajouter l'utilisateur au groupe sudo
usermod -aG sudo $CURRENT_USER

# Vérifier si l'ajout a réussi
if groups $CURRENT_USER | grep -q "\bsudo\b"; then
    echo "L'utilisateur $CURRENT_USER a été ajouté au groupe sudo avec succès."
else
    echo "Erreur : Impossible d'ajouter l'utilisateur $CURRENT_USER au groupe sudo."
fi
