#!/bin/bash

# Function to check if a package is installed
is_installed() {
  yay -Q "$1" &>/dev/null
}

# Remove meld
if is_installed "meld"; then
  echo "Removing meld..."
  yay -Rsnc meld --noconfirm
else
  echo "meld is not installed. Skipping."
fi

# Remove gnome-weather
if is_installed "gnome-weather"; then
  echo "Removing gnome-weather..."
  yay -Rsnc gnome-weather --noconfirm
else
  echo "gnome-weather is not installed. Skipping."
fi

# Remove gnome-terminal
if is_installed "gnome-terminal"; then
  echo "Removing gnome-terminal..."
  yay -Rsnc gnome-terminal --noconfirm
else
  echo "gnome-terminal is not installed. Skipping."
fi

# Remove firefox
if is_installed "firefox"; then
  echo "Removing firefox..."
  yay -Rsnc firefox --noconfirm
else
  echo "firefox is not installed. Skipping."
fi

# Remove gnome-usage
if is_installed "gnome-usage"; then
  echo "Removing gnome-usage..."
  yay -Rsnc gnome-usage --noconfirm
else
  echo "gnome-usage is not installed. Skipping."
fi

# Remove mpv
if is_installed "mpv"; then
  echo "Removing mpv..."
  yay -Rsnc mpv --noconfirm
else
  echo "mpv is not installed. Skipping."
fi

# Remove yad
if is_installed "yad"; then
  echo "Removing yad..."
  yay -Rsnc yad --noconfirm
else
  echo "yad is not installed. Skipping."
fi

# Remove uxterm
if is_installed "uxterm"; then
  echo "Removing uxterm..."
  yay -Rsnc uxterm --noconfirm
else
  echo "uxterm is not installed. Skipping."
fi

# Remove xterm
if is_installed "xterm"; then
  echo "Removing xterm..."
  yay -Rsnc xterm --noconfirm
else
  echo "xterm is not installed. Skipping."
fi
