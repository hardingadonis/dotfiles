#!/bin/bash

#                       _oo0oo_
#                      o8888888o
#                      88" . "88
#                      (| -_- |)
#                      0\  =  /0
#                    ___/`---'\___
#                  .' \\|     |# '.
#                 / \\|||  :  |||# \
#                / _||||| -:- |||||- \
#               |   | \\\  -  #/ |   |
#               | \_|  ''\---/''  |_/ |
#               \  .-\__  '-'  ___/-. /
#             ___'. .'  /--.--\  `. .'___
#          ."" '<  `.___\_<|>_/___.' >' "".
#         | | :  `- \`.;`\ _ /`;.`/ - ` : | |
#         \  \ `_.   \_ __\ /__ _/   .-` /  /
#     =====`-.____`.___ \_____/___.-`___.-'=====
#                       `=---='
#
#     ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
#            Phật phù hộ, không bao giờ BUG
#     ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

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

# Install git lfs
if ! is_installed "git-lfs"; then
	echo "Installing git-lfs..."
	yay -S git-lfs --noconfirm
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

# Install gnome-extensions-cli
if ! is_installed "gnome-extensions-cli"; then
	echo "Installing gnome-extensions-cli..."
	yay -S gnome-extensions-cli --noconfirm
else
	echo "gnome-extensions-cli is already installed. Skipping."
fi

# Install rclone
if ! is_installed "rclone"; then
	echo "Installing rclone..."
	yay -S rclone --noconfirm
else
	echo "rclone is already installed. Skipping."
fi

# Install zsh
if ! is_installed "zsh"; then
	echo "Installing zsh..."
	yay -S zsh --noconfirm
else
	echo "zsh is already installed. Skipping."
fi

# Install fonts from ryanoasis/nerd-fonts
git clone https://github.com/ryanoasis/nerd-fonts.git --depth 1
chmod +x nerd-fonts/install.sh
./nerd-fonts/install.sh
rm -rf nerd-fonts

# Install zsh-theme-powerlevel10k-git
if ! is_installed "zsh-theme-powerlevel10k-git"; then
	echo "Installing zsh-theme-powerlevel10k-git..."
	yay -S zsh-theme-powerlevel10k-git --noconfirm
	echo 'source /usr/share/zsh-theme-powerlevel10k/powerlevel10k.zsh-theme' >>~/.zshrc
else
	echo "zsh-theme-powerlevel10k-git is already installed. Skipping."
fi

# Install zsh-syntax-highlighting
if ! is_installed "zsh-syntax-highlighting"; then
	echo "Installing zsh-syntax-highlighting..."
	yay -S zsh-syntax-highlighting --noconfirm
	echo 'source /usr/share/zsh/plugins/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh' >>~/.zshrc
else
	echo "zsh-syntax-highlighting is already installed. Skipping."
fi

# Config for zsh
# Check if ~/.zshrc exists and contains the bindkey configuration
if [ -f ~/.zshrc ]; then
    # Check if the bindkey configuration already exists
    if ! grep -q 'bindkey "\^\[\[3~" delete-char' ~/.zshrc; then
        echo 'bindkey "^[[3~" delete-char' >> ~/.zshrc
        echo 'bindkey configuration added to ~/.zshrc.'
    else
        echo 'bindkey configuration already exists in ~/.zshrc. Skipping.'
    fi
else
    # If .zshrc doesn't exist, create it and add the configuration
    echo 'bindkey "^[[3~" delete-char' > ~/.zshrc
    echo 'bindkey configuration added to newly created ~/.zshrc.'
fi

# Install nvm
if ! is_installed "nvm"; then
	echo "Installing nvm..."
	yay -S nvm --noconfirm
	echo 'source /usr/share/nvm/init-nvm.sh' >>~/.zshrc
else
	echo "nvm is already installed. Skipping."
fi

# Install gnome-network-displays
if ! is_installed "gnome-network-displays"; then
	echo "Installing gnome-network-displays..."
	yay -S gnome-network-displays --noconfirm
else
	echo "gnome-network-displays is already installed. Skipping."
fi
