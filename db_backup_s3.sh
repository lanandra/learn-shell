#!/bin/bash

# backup your local backup db file to aws s3 using aws cli
# copy to s3 with acl set to bucket owner full control, sse encryption, storage class using onezone_ia and using spesific profile
# get date and print backup date at output

DATENOW=$(date);
aws s3 cp your_sql.sql s3://your_path/your_sql.sql --acl bucket-owner-full-control --sse --storage-class ONEZONE_IA --profile your_profile;
aws s3 cp your_mongo.dump s3://your_path/your_mongo.dump --acl bucket-owner-full-control --sse --storage-class ONEZONE_IA --profile your_profile;
echo "Backup has been done at $DATENOW"
