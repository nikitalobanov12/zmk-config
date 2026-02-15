#!/bin/bash
# Setup script for ZMK firmware

echo "Setting up ZMK for your Lily58..."
echo ""

# Check if user has GitHub CLI
if command -v gh &> /dev/null; then
    echo "Creating GitHub repository..."
    cd ~/zmk-config
    gh repo create zmk-config --public --source=. --push
    echo "Repository created and code pushed!"
else
    echo "Please install GitHub CLI first:"
    echo "  sudo pacman -S github-cli"
    echo ""
    echo "Or manually:"
    echo "1. Go to https://github.com/new"
    echo "2. Create a repo named 'zmk-config'"
    echo "3. Run:"
    echo "   cd ~/zmk-config"
    echo "   git remote add origin https://github.com/YOUR_USERNAME/zmk-config.git"
    echo "   git push -u origin main"
fi
