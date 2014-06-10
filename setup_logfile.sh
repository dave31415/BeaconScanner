#!/bin/bash
#run as root, e.g. sudo ./setup_logfile.sh or sudo ./setup_logfile /Users/homer/myBeacons.log
#by default, it will use /var/log/iBeacons.log

if [ "$#" -ne 1 ]; then
    echo "Using default logfile location"
    logfile="/var/log/iBeacons.log"
else 
    logfile=$1
fi

echo
echo setting up logfile: $logfile

if [[ -f $logfile ]]; then
    logfile_backup="$logfile.back"
    echo Warning file exists! 
    echo backing up to $logfile_backup
    mv $logfile $logfile_backup
fi
touch $logfile
chmod a+w $logfile
chmod a+r $logfile
echo
