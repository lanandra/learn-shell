#!/bin/bash

# this file usage is for changing timezone on ec2 to another timezone
# in this file, timezone is change to Asia/Jakarta

mv /etc/localtime /etc/localtime.bak
ln -s /usr/share/zoneinfo/Asia/Jakarta /etc/localtime
sudo systemctl restart cron.service
