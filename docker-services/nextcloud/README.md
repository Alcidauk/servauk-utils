# Nextcloud service

This docker compose stack enables a nextcloud server, and its attached MariaDB database. 

It creates volumes using bind mount docker functionnality. Data are stored:
- in a `mariadb` folder for database data
- in `nextcloud/data` for nextcloud files
- in `nextcloud/config` for nextcloud configuration files. 

The exposed web port is catched and exposed by a nginx docker webserver.
