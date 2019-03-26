# LazyMan IP Auto Updater
A scheduled task that is setup to refresh the IP's for LazyMan with the latest IP's if found.

## Installing the Script
1. Clone the repository under the  **/opt/** folder
2. Add a static line to the end of the hosts file (make sure to replace **(LATEST IP FOR powersports.ml)** with the actual IP)

```### LazyMan Plex-Plugin```

```#powersports.ml-(LATEST IP FOR powersports.ml)```

3. Edit the crontab to add/create the scheduled task ([crontab Guide](https://crontab.guru/)) pointing to the cloned script
> sudo crontab -e

Example (runs at 11pm (23) every day)
> 0 23 * * * /opt/LazyMan_IP_Auto_Updater/LazyMan_IP_Auto_Updater.sh
