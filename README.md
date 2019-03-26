# LazyMan IP Auto Updater
A scheduled task that is setup to refresh the IP's for LazyMan with the latest IP's if found.

## Installing the Script
1. Clone the repository under the  **/opt/** folder
2. Add a static line to the end of the hosts file (make sure to replace **(LATEST IP FOR powersports.ml )** with the actual latest IP address)

```### LazyMan Plex-Plugin```

```#powersports.ml-(LATEST IP FOR powersports.ml)```

3. Edit the crontab to add/create the scheduled task ([crontab Guide](https://crontab.guru/))
> sudo crontab -e
