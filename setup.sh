# Download package
wget https://github.com/yuezk/GlobalProtect-openconnect/releases/download/v2.3.7/globalprotect-openconnect_2.3.7-1_arm64.deb

# Then install git (for easy updating) and the pacakge
sudo apt install git ./globalprotect-openconnect_2.3.7-1_arm64.deb

# Remove installed .deb file
rm globalprotect-openconnect_2.3.7-1_arm64.deb

# Copy starting script to desktop
cp start.sh $HOME/Desktop/start-vpn

# Allow file to be executed from desktop without CLI
chmod +x $HOME/Desktop/start-vpn
