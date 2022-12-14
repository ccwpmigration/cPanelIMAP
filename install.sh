#!/bin/sh
# SCRIPT: install.sh
# PURPOSE: Install cPanelIMAP IMAPSYNC GUI for cPanel
# AUTHOR: StephenA <support@ccwpmigration.xyz>
#
echo "Deleteing any currently installed version"
rm -rf /usr/local/cpanel/base/frontend/paper_lantern/cc_imapsync
rm -rf /usr/local/cpanel/base/frontend/jupiter/cc_imapsync
echo "Installing cPanelIMAP IMAPSYNC GUI for cPanel - Paper Lantern"
mkdir -p /usr/local/cpanel/base/frontend/paper_lantern/cc_imapsync
cd /usr/local/cpanel/base/frontend/paper_lantern/cc_imapsync
wget https://github.com/ccwpmigration/cPanelIMAP/raw/main/cc_imapsync.tar.gz
tar xzf cc_imapsync.tar.gz
cd cc_imapsync/
mv * ../
chown -R root:root /usr/local/cpanel/base/frontend/paper_lantern/cc_imapsync/
chmod 755 /usr/local/cpanel/base/frontend/paper_lantern/cc_imapsync/
/usr/local/cpanel/scripts/install_plugin /usr/local/cpanel/base/frontend/paper_lantern/cc_imapsync/cc_imapsync.tar.gz --theme paper_lantern
echo "Paper Lantern Installation is complete!"

echo "Installing cPanelIMAP IMAPSYNC GUI for cPanel - Jupiter"
mkdir -p /usr/local/cpanel/base/frontend/jupiter/cc_imapsync
cd /usr/local/cpanel/base/frontend/jupiter/cc_imapsync
wget https://github.com/ccwpmigration/cPanelIMAP/raw/main/cc_imapsync.tar.gz
tar xzf cc_imapsync.tar.gz
cd cc_imapsync/
mv * ../
chown -R root:root /usr/local/cpanel/base/frontend/jupiter/cc_imapsync/
chmod 755 /usr/local/cpanel/base/frontend/jupiter/cc_imapsync/
/usr/local/cpanel/scripts/install_plugin /usr/local/cpanel/base/frontend/jupiter/cc_imapsync/cc_imapsync.tar.gz
echo "Jupiter Installation is complete!"
