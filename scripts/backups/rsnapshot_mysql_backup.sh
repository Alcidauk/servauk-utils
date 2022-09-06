echo "Dumping mysql databases..."
docker exec nextcloud_db_1 sh -c 'exec mysqldump --all-databases -uroot -p"$MYSQL_ROOT_PASSWORD"' > bdd.sql
