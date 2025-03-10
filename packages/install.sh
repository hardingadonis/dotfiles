#!/bin/bash

#  ⣿⣿⣿⠟⠛⠛⠻⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⡟⢋⣩⣉⢻⣿⣿⣿
#  ⣿⣿⣿⠀⣿⣶⣕⣈⠹⠿⠿⠿⠿⠟⠛⣛⢋⣰⠣⣿⣿⠀⣿⣿⣿
#  ⣿⣿⣿⡀⣿⣿⣿⣧⢻⣿⣶⣷⣿⣿⣿⣿⣿⣿⠿⠶⡝⠀⣿⣿⣿
#  ⣿⣿⣿⣷⠘⣿⣿⣿⢏⣿⣿⣋⣀⣈⣻⣿⣿⣷⣤⣤⣿⡐⢿⣿⣿
#  ⣿⣿⣿⣿⣆⢩⣝⣫⣾⣿⣿⣿⣿⡟⠿⠿⠦⠀⠸⠿⣻⣿⡄⢻⣿
#  ⣿⣿⣿⣿⣿⡄⢻⣿⣿⣿⣿⣿⣿⣿⣿⣶⣶⣾⣿⣿⣿⣿⠇⣼⣿
#  ⣿⣿⣿⣿⣿⣿⡄⢿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⡟⣰⣿⣿
#  ⣿⣿⣿⣿⣿⣿⠇⣼⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⢀⣿⣿⣿
#  ⣿⣿⣿⣿⣿⠏⢰⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⢸⣿⣿⣿
#  ⣿⣿⣿⣿⠟⣰⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⠀⣿⣿⣿
#  ⣿⣿⣿⠋⣴⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⡄⣿⣿⣿
#  ⣿⣿⠋⣼⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⡇⢸⣿⣿

# Function to check if a package is installed
is_installed() {
  yay -Q "$1" &>/dev/null
}

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

# Install git lfs
if ! is_installed "git-lfs"; then
	echo "Installing git-lfs..."
	yay -S git-lfs --noconfirm
	git lfs install
else
	echo "git-lfs is already installed. Skipping."
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

# Install btop
if ! is_installed "btop"; then
	echo "Installing btop..."
	yay -S btop --noconfirm
else
	echo "btop is already installed. Skipping."
fi

# Install fastfetch
if ! is_installed "fastfetch"; then
	echo "Installing fastfetch..."
	yay -S fastfetch --noconfirm
else
	echo "fastfetch is already installed. Skipping."
fi

# Install docker
if ! is_installed "docker"; then
	echo "Installing docker..."
	yay -S docker --noconfirm
else
	echo "docker is already installed. Skipping."
fi

# Install docker-compose
if ! is_installed "docker-compose"; then
	echo "Installing docker-compose..."
	yay -S docker-compose --noconfirm
else
	echo "docker-compose is already installed. Skipping."
fi

# Install docker-buildx
if ! is_installed "docker-buildx"; then
	echo "Installing docker-buildx..."
	yay -S docker-buildx --noconfirm
else
	echo "docker-buildx is already installed. Skipping."
fi

# Enable and start docker if it is disabled
if systemctl is-enabled --quiet docker; then
	echo "Docker is already enabled."
else
	echo "Enabling and starting Docker..."
	sudo systemctl enable docker
	sudo systemctl start docker
fi

# Install lazydocker
if ! is_installed "lazydocker"; then
	echo "Installing lazydocker..."
	yay -S lazydocker --noconfirm
else
	echo "lazydocker is already installed. Skipping."
fi

# Install vlc
if ! is_installed "vlc"; then
	echo "Installing vlc..."
	yay -S vlc --noconfirm
else
	echo "vlc is already installed. Skipping."
fi

# Install virtualbox
if ! is_installed "virtualbox"; then
	echo "Installing virtualbox..."
	yay -S virtualbox --noconfirm
else
	echo "virtualbox is already installed. Skipping."
fi

# Install rclone
if ! is_installed "rclone"; then
	echo "Installing rclone..."
	yay -S rclone --noconfirm
else
	echo "rclone is already installed. Skipping."
fi

# Install nvm
if ! is_installed "nvm"; then
	echo "Installing nvm..."
	yay -S nvm --noconfirm
	echo 'source /usr/share/nvm/init-nvm.sh' >>~/.zshrc
else
	echo "nvm is already installed. Skipping."
fi

# Install audacity
if ! is_installed "audacity"; then
	echo "Installing audacity..."
	yay -S audacity --noconfirm
else
	echo "audacity is already installed. Skipping."
fi
