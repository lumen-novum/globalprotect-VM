# Download package
wget https://github.com/yuezk/GlobalProtect-openconnect/releases/download/v2.3.7/globalprotect-openconnect_2.3.7-1_arm64.deb

# Then install git (for easy updating) and the pacakge
sudo apt install git ./globalprotect-openconnect_2.3.7-1_arm64.deb

# Create local repository
git init -b main

# Set up remote to pull from
git remote add origin https://github.com/lumen-novum/globalprotect-VM.git
git branch --set-upstream-to origin/main

# Remove installed .deb file
rm globalprotect-openconnect_2.3.7-1_arm64.deb

# Copy startup script to bin
sudo cp start.sh /usr/local/bin/start-vpn

# Create systemd service
sudo cp gp-vpn.service /etc/systemd/system/

# Allow file to be executed
chmod +x /usr/local/bin/start-vpn

# Start and enable systemctl service
sudo systemctl enable gp-vpn
sudo systemctl start gp-vpn
