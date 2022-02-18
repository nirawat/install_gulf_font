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
apt-get -y install git
echo ""
echo "*** NOTICE: We've use root [sudo] mode. please enter the password. ***"
echo "Downloading..."
cd ..
cd usr/share/fonts/truetype
git clone https://github.com/nirawat/install_gulf_font.git
echo "Download complete!"
echo ""
echo "Installing..."
fc-cache -f -v
fc-list
echo "Install complete!"
echo ""
echo "*** Install TH Sarabun New Font complete ***"