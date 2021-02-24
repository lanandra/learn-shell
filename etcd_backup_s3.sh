#!/bin/bash

# backup your local etcd snapshot file to aws s3 using aws cli
# copy to s3 with acl set to bucket owner full control, sse encryption, storage class using onezone_ia and using spesific profile
# get date and print backup date at output
DATENOW=$(date +"%A, %d-%m-%Y %H:%M:%S %Z")
aws s3 cp snapshot.db s3://path/snapshot.db \
--acl bucket-owner-full-control \
--sse --storage-class ONEZONE_IA \
--profile ludes.dbeosl.bot;

echo "Backup has been done at $DATENOW"
