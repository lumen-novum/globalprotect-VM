# Download package
wget https://github.com/yuezk/GlobalProtect-openconnect/releases/download/v2.3.9/globalprotect-openconnect_2.3.9-1_arm64.deb

# Then install the pacakge
sudo apt install ./globalprotect-openconnect_2.3.9-1_arm64.deb

# Remove installed .deb file
rm globalprotect-openconnect_2.3.9-1_arm64.deb

# Copy startup script to bin
sudo cp start.sh /usr/local/bin/start-vpn

# Allow file to be executed
sudo chmod +x /usr/local/bin/start-vpn
