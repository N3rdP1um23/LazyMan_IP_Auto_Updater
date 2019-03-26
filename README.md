# LazyMan IP Auto Updater
A scheduled task that is setup to refresh the IP's for LazyMan with the latest IP's if found.

## Plex Requirement
Make sure you have the following Plex.bundle installed on your Plex server [nomego/Lazyman.bundle](https://github.com/nomego/Lazyman.bundle)

## Pre-Install Operations - Must be Performed Before Initializing the Scripts
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

## Installing the Script - Windows
* The Scheduled Task needs **Higher Provileges** in-order to update the Hosts file
1. Clone the repository under the  **~** current users folder
2. Create a Scheduled task with **Task Scheduler** using the following properties
  - General Tab
    - Set the **Name** field to *LazyMan Plex Plug-In Auto Updater* or desired task name
    - Choose the **Run whether user is logged on or not** option (will require users password upon saving task)
    - Check the **Run with highest Privileges** option
    - With the **Configure For** dropdown, select your *target system*
  - Trigger Tab
    - Add a new trigger each time you want the script to be triggered (example, run daily to update with the latest IP's if found)
  - Action Tab
    - Add a new action
    - Set the new Action to **Start a program**
    - Set the **Program/script** field to powershell
    - Set the **Add arguments** field to the path of the PowerShell Script (C:\Users\\**(USER)**\LazyMan_IP_Auto_Updater\LazyMan_IP_Auto_Updater.ps1)
  - Conditions Tab
    - *(Optional)* Can uncheck the **Start the task only is the computer is on AC Power** as this task isn't very intensive/time consuming and can be performed when on battery power
    - *(Optional)* Could set the *Start only if the following network connection is available* as this script does require internet
3. Save the Scheduled task - at this point you will have to enter your password allowing it to run the script as an administrator
