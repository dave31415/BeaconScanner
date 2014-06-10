This is a fork of the BeaconScanner app

It is modified to include logging

Installation :

Choose a place for the logfile. By default it will use /var/log/iBeacon.log

Run this (as root)

sudo ./setup_log.sh

or

sudo ./setup_log.sh /path/to/logfile

If you chose a non-default logfile name, edit this line in 
HGBeaconViewController.m
define logfilepath "/var/log/iBeacon.log"

Open this repo in xcode (you need xcode installed) and click on the green arrow which will
build the App and run it. You should see a window appear with the data and this should also 
be written into the logfile (check it!).





