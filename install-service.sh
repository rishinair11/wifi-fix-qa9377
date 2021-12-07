set -e

echo "Copying the script to /usr/local/src..."
cp -f wifi-fix.sh /usr/local/src/wifi-fix.sh

echo "Making the script executable..."
chmod 777 /usr/local/src/wifi-fix.sh

echo "Copying the service to /etc/systemd/system..."
cp -f wifi-fix.service /etc/systemd/system/wifi-fix.service

echo "Enabling wifi-fix.service..."
systemctl enable wifi-fix.service

echo "Running daemon-reload..."
systemctl daemon-reload

echo "Done!"

echo "Reboot the system using 'sudo reboot' to apply the changes now."