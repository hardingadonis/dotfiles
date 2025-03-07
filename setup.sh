#/bin/bash

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

# Update the system
echo "Updating the system..."
sudo pacman -Syu --noconfirm

# Install yay
echo "Installing yay..."
chmod +x yay/install.sh
bash ./yay/install.sh

# Remove unnecessary packages
echo "Removing unnecessary packages..."
chmod +x packages/remove.sh
bash ./packages/remove.sh

# Install necessary packages
echo "Installing necessary packages..."
chmod +x packages/install.sh
bash ./packages/install.sh

# Configure the system
echo "Configuring the system..."
chmod +x config/config.sh
bash ./config/config.sh

# Clear the cache
echo "Clearing the cache..."
yay -Yc --noconfirm
yay -Sc --noconfirm

# Confirm the installation
echo "Installation complete!"
echo "Reboot the system to apply changes."
echo "Press any key to reboot..."
read -n 1 -s
reboot
