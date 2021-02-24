#!/bin/bash

# export shell and path to be used on cron job
# define .profile and path to script on crontab
# * * * * * . $HOME/.profile; /path/db_backup_s3.sh
export SHELL=/bin/bash
export PATH=/usr/local/sbain:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin

# backup your local backup db file to aws s3 using aws cli
# copy to s3 with acl set to bucket owner full control, sse encryption, storage class using onezone_ia and using spesific profile
# get date and print backup date at output
DATENOW=$(date +"%A, %d-%m-%Y %H:%M:%S");
aws s3 cp your_sql.sql s3://your_path/your_sql.sql --acl bucket-owner-full-control --sse --storage-class ONEZONE_IA --profile your_profile;
aws s3 cp your_mongo.dump s3://your_path/your_mongo.dump --acl bucket-owner-full-control --sse --storage-class ONEZONE_IA --profile your_profile;
echo "Backup has been done at $DATENOW"
