# WIFI Fix for Qualcomm Atheros QCA9377

## Setup

- Clone the Git repository

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
cp wifi-fix.sh /etc/systemd/system/wifi-fix.service
```

- Enable the service
```bash
sudo systemctl enable wifi-fix.service
```

- Run `daemon-reload` for `systemd`
```bash
sudo systemctl daemon-reload
```

- Reboot the system
```bash
sudo reboot
```

This will make sure that the wifi-fix service will run after the Network connection is established, on every boot.

## References

- [AskUbuntu forum post for the solution](https://askubuntu.com/questions/1033679/qualcomm-atheros-weak-wifi-signal-on-ubuntu-18-04)
- [DigitalOcean guide to creating a systemd unit file](https://www.digitalocean.com/community/tutorials/understanding-systemd-units-and-unit-files)