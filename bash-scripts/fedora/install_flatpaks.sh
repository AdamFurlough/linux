#!/bin/bash

# Ensure Flatpak is installed
echo "Ensuring Flatpak is installed..."
sudo dnf install -y flatpak

# add flathub to repos
echo "adding flathub repo..."
flatpak remote-add --if-not-exists flathub https://flathub.org/repo/flathub.flatpakrepo

# install dark theme for flatpak  applications 
flatpak install -y org.gtk.Gtk3theme.adw-gtk3 org.gtk.Gtk3theme.adw-gtk3-dark

# Add: Pikabackup
# List of Flatpak application IDs to install
apps=(
    "com.obsproject.Studio"
    "org.videolan.VLC"
)

# Loop through and install each application
for app in "${apps[@]}"; do
    echo "Installing $app..."
    flatpak install -y flathub "$app"
done

echo "flatpaks have been installed"
