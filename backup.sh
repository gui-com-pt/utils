#!/bin/bash
#Purpose = Backups
#Created on 31-04-2014
#Author = Guilherme Cardoso
#Version 0.1

#START

TIME=`date +"%d-%m-%Y-%H-%M-%S"` # day-month-year-hour-minute-second. Ie: 30-04-2014-14-49-47
FILENAME="backup-$TIME.tar.gz" # file name is combined with the date
SRCDIR="/var/www" # source directory
DESDIR="/var/backups" # destination directory
tar -cpzf $DESDIR/$FILENAME $SRCDIR # compress the source directory and saves the compress archive in destination

#END