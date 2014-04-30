#!/bin/bash
#Purpose = Backup mysql databases using mysqldump utitily (installed with mysql-client)
#Created on 31-04-2014
#Author = Guilherme Cardoso
#Version 0.1

#START

TIME=`date +"%d-%m-%Y-%H-%M-%S"` # day-month-year-hour-minute-second. Ie: 30-04-2014-14-49-47
FILENAME="backup-$TIME.sql" # file name is combined with the date
SRCDIR="/var/backups"
MYSQLUSER="root" # source directory
MYSQLPW="root*for_now" # destination directory
MYSQLDB = 'wordpress'

#$DBPW must be after -p without any blank space, in order to avoid the password prompt
mysqldump -u $DBUSER -p$DBPW $MYSQLDB > $SRCDIR/$FILENAME

#END