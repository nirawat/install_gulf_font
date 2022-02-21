#! /bin/bash

# Last updated 2022-02-19
# auther: Nirawat Prasertsang
APP_VERSION="1.0"

echo "# Install Font for Ubuntu terminal."
echo "# Version $APP_VERSION"
echo ""
echo "*** Install apt-get & git"
apt-get install
apt-get update
apt install fontconfig
apt install - reinstall ttf-mscorefonts-installer
apt -y install git
echo ""
echo "*** NOTICE: We've use root [sudo] mode. please enter the password. ***"
echo "Downloading Font..."
cd ..
cd usr/share/fonts/truetype
mkdir gulf-fonts
git clone https://github.com/nirawat/install_gulf_font.git
echo "Download complete!"
echo ""
echo "Config & Installing..."
mv `pwd`/install_gulf_font/fonts/*.ttf ./gulf-fonts
cd gulf-fonts
fc-cache -f -v
fc-list | grep THSarabunNew
echo "Config & Install complete!"
echo ""
echo "*** License ***"
echo ""
echo "By : Nirawat Prasertsang"
echo "Email : nirawat.pss@gmail.com"
echo "Mobile : 0886380638"
echo ""
echo "*** Install Font complete ***"