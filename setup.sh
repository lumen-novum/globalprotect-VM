# Download package
wget https://github.com/yuezk/GlobalProtect-openconnect/releases/download/v2.3.7/globalprotect-openconnect_2.3.7-1_arm64.deb

# Then install git (for easy updating) and the pacakge
sudo apt install git ./globalprotect-openconnect_2.3.7-1_arm64.deb

# Create local repository
git init

# Set up remote to pull from
git remote add origin https://github.com/lumen-novum/globalprotect-VM.git

# Remove installed .deb file
rm globalprotect-openconnect_2.3.7-1_arm64.deb

# Link starting script to desktop
ln -s $PWD/start.sh $HOME/Desktop/start-vpn.sh

# Allow file to be executed
chmod +x $HOME/Desktop/start-vpn.sh

# Run at startup
sudo echo "$HOME/Desktop/start-vpn.sh" >> /etc/rc.local
