#!/bin/bash
#Purpose = Backups
#Created on 31-04-2014
#Author = Guilherme Cardoso
#Version 0.1

#START

TIME=`date +"%d-%m-%Y-%H-%M-%S"` # day-month-year-hour-minute-second. Ie: 30-04-2014-14-49-47
BASEPATH="/var/www"
VHOST="example"

mkdir -p $BASEPATH/$VHOST/public
chown www-data:www-data $BASEPATH/$VHOST/public
chmod 755 $BASEPATH/$VHOST

#Edit some variable in default and modify it
 cp /etc/nginx/sites-available/default /etc/nginx/sites-available/$VHOST
 ln -s /etc/nginx/sites-available/$VHOST /etc/nginx/sites-enabled/$VHOST

#END