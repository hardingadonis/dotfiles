#/bin/bash

# Update the system
echo "Updating the system..."
yay -Syu --noconfirm

# Remove unnecessary packages
# echo "Removing unnecessary packages..."
# chmod +x packages/remove.sh
# bash ./packages/remove.sh

# Install necessary packages
# echo "Installing necessary packages..."
# chmod +x packages/install.sh
# bash ./packages/install.sh

# Install GNOME extensions
# echo "Installing GNOME extensions..."
# chmod +x extensions/install.sh
# bash ./extensions/install.sh

# Configure the system
echo "Configuring the system..."
chmod +x config/config.sh
bash ./config/config.sh

# Confirm the installation
#echo "Installation complete!"
#echo "Reboot the system to apply changes."
#echo "Press any key to reboot..."
#read -n 1 -s
#reboot
