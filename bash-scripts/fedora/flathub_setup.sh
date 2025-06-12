#!/bin/bash

# Exit immediately if a command exits with a non-zero status
set -e

# Add the Flathub remote if it doesn't already exist
echo "Adding Flathub remote..."
flatpak remote-add --if-not-exists flathub https://dl.flathub.org/repo/flathub.flatpakrepo

# Reinstall all applications that use the Fedora runtime from Flathub
echo "Reinstalling apps from Flathub that use org.fedoraproject.Platform..."
apps=$(flatpak list --app-runtime=org.fedoraproject.Platform --columns=application)

if [ -n "$apps" ]; then
    flatpak install --reinstall -y flathub $apps
else
    echo "No applications found using org.fedoraproject.Platform runtime."
fi

# Optionally delete the Fedora remote
# Be careful with this step – it may break some apps if they're not available on Flathub
echo "Removing the Fedora Flatpak remote..."
flatpak remote-delete fedora || echo "Fedora remote not found or already removed."

echo "Flathub setup complete."
