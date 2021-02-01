#!/bin/bash

# get 5 minutes of last http_access log in /var/log

# get current time
DATENOW=$(date +"%b %d %H:%M")
echo "Current time is:"
echo $DATENOW

echo ""
# get 5 minutes ago
FIVEMINAGO=$(date +"%b %d %H:%M" --date='5 minutes ago')
echo "Five minutes ago is:"
echo $FIVEMINAGO

echo ""
# validate current time is greater than 5 minutes ago
if [ "$DATENOW" > "$FIVEMINAGO" ];
then
	# get last minutes log contain http_access
	cd /var/log/
	echo "Last http_access.log in 5 minutes:"
	find . -cmin -5 | grep http_access_*.log
else
	echo "failed"
fi
