#!/bin/bash

# backup mysql db and mongo db that running on docker container
# get date and print date on output

DATENOW=$(date +"%A, %d-%m-%Y %H:%M:%S");
docker exec your_mysql_container /usr/bin/mysqldump -u your_user --password=your_password your_db > your_path/your_file.sql;
docker exec your_mongo_container sh -c 'mongodump --archive' > your_path/your_file.dump;
echo "Backup has been done at $DATENOW"
