# LazyMan IP Auto Updater
A scheduled task that is setup to refresh the IP's for LazyMan with the latest IP's if found.

## Plex Requirement
Make sure you have the following Plex.bundle installed on your Plex server [nomego/Lazyman.bundle](https://github.com/nomego/Lazyman.bundle)

## Pre-Install Scripts
Mare sure that the following lines are included in your machines hosts file.  Also, make sure to replace **(LATEST IP FOR powersports.ml)** with the actual IP at the time of editing the hosts file.
```
### LazyMan Plex-Plugin
#powersports.ml-(LATEST IP FOR powersports.ml)
(LATEST IP FOR powersports.ml) mf.svc.nhl.com
(LATEST IP FOR powersports.ml) mlb-ws-mf.media.mlb.com
(LATEST IP FOR powersports.ml) playback.svcs.mlb.com
```

## Installing the Script - Linux
1. Clone the repository under the  **/opt/** folder
2. Edit the crontab to add/create the scheduled task ([crontab Guide](https://crontab.guru/)) pointing to the cloned script
> sudo crontab -e

Example (runs at 11pm (23) every day)
> 0 23 * * * /opt/LazyMan_IP_Auto_Updater/LazyMan_IP_Auto_Updater.sh
