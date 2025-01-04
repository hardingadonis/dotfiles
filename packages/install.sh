#!/bin/bash

# Function to check if a package is installed
is_installed() {
  yay -Q "$1" &>/dev/null
}

# Install ibus-bamboo
if ! is_installed "ibus-bamboo"; then
  echo "Installing ibus-bamboo..."
  yay -S ibus-bamboo --noconfirm
else
  echo "ibus-bamboo is already installed. Skipping."
fi

# Install visual-studio-code-bin
if ! is_installed "visual-studio-code-bin"; then
  echo "Installing visual-studio-code-bin..."
  yay -S visual-studio-code-bin --noconfirm
else
  echo "visual-studio-code-bin is already installed. Skipping."
fi

# Install google-chrome
if ! is_installed "google-chrome"; then
  echo "Installing google-chrome..."
  yay -S google-chrome --noconfirm
else
  echo "google-chrome is already installed. Skipping."
fi

# Install gitkraken
if ! is_installed "gitkraken"; then
  echo "Installing gitkraken..."
  yay -S gitkraken --noconfirm
else
  echo "gitkraken is already installed. Skipping."
fi

# Install discord
if ! is_installed "discord"; then
  echo "Installing discord..."
  yay -S discord --noconfirm
else
  echo "discord is already installed. Skipping."
fi

# Install dbeaver
if ! is_installed "dbeaver"; then
  echo "Installing dbeaver..."
  yay -S dbeaver --noconfirm
else
  echo "dbeaver is already installed. Skipping."
fi

# Install steam
if ! is_installed "steam"; then
  echo "Installing steam..."
  yay -S steam --noconfirm
else
  echo "steam is already installed. Skipping."
fi

# Install obs-studio
if ! is_installed "obs-studio"; then
  echo "Installing obs-studio..."
  yay -S obs-studio --noconfirm
else
  echo "obs-studio is already installed. Skipping."
fi

# Install obsidian
if ! is_installed "obsidian"; then
  echo "Installing obsidian..."
  yay -S obsidian --noconfirm
else
  echo "obsidian is already installed. Skipping."
fi
