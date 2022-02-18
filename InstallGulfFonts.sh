#! /bin/bash

# Last updated 2022-02-19
# auther: Nirawat Prasertsang
APP_VERSION="1.0"

echo "# Install Font for Ubuntu terminal."
echo "# Version $APP_VERSION"
echo ""
echo "*** NOTICE: Install apt-get install"
apt-get install
apt-get update
apt-get install fontconfig
apt-get install - reinstall ttf-mscorefonts-installer
apt-get -y install git
echo ""
echo "*** NOTICE: We've use root [sudo] mode. please enter the password. ***"
echo "Downloading..."
cd ..
cd usr/share/fonts/truetype
mkdir gulf-fonts
git clone https://github.com/nirawat/install_gulf_font.git
echo "Download complete!"
echo ""
echo "Installing..."
mv `pwd`/install_gulf_font/fonts/*.ttf ./gulf-fonts
fc-cache -f -v
fc-list
echo "Install complete!"
echo ""
echo "*** Install Font complete ***"