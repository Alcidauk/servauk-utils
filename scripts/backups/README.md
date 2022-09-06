# Backup

A backup system is running on servauk. It ensure to keep cloud data safe. i

It uses rsnapshot, a common package used to perform backups, and a cron job to make it every day.

This folder contains:
- a `crontab` file containing the line running backups;
- a `backup_script.sh` file, executed by the cron task, and running the complete backup process;
- a `rsnapshot.conf` config file, which has to be located in `/etc` folder, and which configure rsnapshot backup process.


# Process

A backup consists here in several steps:
- a crontab runs a script which starts and run all next steps
- a rsnapshot command is run: it saves cloud files and config, and run subscripts, saving db files, and mails
- backuped files are then sent to a local-backup user home folder. This user can be targeted by remote machines to get backups and store it in a safe place.
