#!/bin/bash

start_rsnapshot=$(date)
echo "Doing daily rsnaphot... $start_rsnapshot"
rsnapshot daily

start_copy=$(date)

echo "Copying in local user... $start_copy"
rsync -avz -O --no-perms -H --chown=local-backup:local-backup /home/alcidauk/backups/dailies/ /home/local-backup/backups >> /home/alcidauk/backups/cron.log

end_backup=$(date)
echo "End of backup process... $end_backup"
