# WIFI Fix for Qualcomm Atheros QCA9377
## Automatic Setup
- Run `make`
```bash
sudo make
```
- Once the script finishes execution, reboot the system to apply the changes
```bash
sudo reboot
```

## Manual Setup

- Become `sudo`
```bash
sudo -s
```

- Copy the `wifi-fix.sh` file into `/usr/local/src`
```bash
cp wifi-fix.sh /usr/local/src/wifi-fix.sh
```

- Set `executable` permissions for the copied script
```bash
chmod 777 /usr/local/src/wifi-fix.sh
```

- Copy `wifi-fix.service` into `/etc/systemd/system/`

```bash
cp wifi-fix.service /etc/systemd/system/wifi-fix.service
```

- Enable the service
```bash
systemctl enable wifi-fix.service
```

- Run `daemon-reload` for `systemd`
```bash
systemctl daemon-reload
```

- Reboot the system
```bash
reboot
```

This will make sure that the wifi-fix service will run after the Network connection is established, on every boot.

## References

- [AskUbuntu forum post for the solution](https://askubuntu.com/questions/1033679/qualcomm-atheros-weak-wifi-signal-on-ubuntu-18-04)
- [DigitalOcean guide to creating a systemd unit file](https://www.digitalocean.com/community/tutorials/understanding-systemd-units-and-unit-files)