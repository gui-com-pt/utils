#!/usr/bin/python
#Purpose = Change the wordpress instalation hostname in database and wp-config (if exists)
#Created on 03-05-2014
#Author = Guilherme Cardoso
#Version = 0.0.1

import MySQLdb

hostname = "noctulachannel.com"
db = MySQLdb.connect(host="localhost", user="root", passwd="root", db="test")

cur = db.cursor()
cur.execute("UPDATE wp_options SET option_value='%s' WHERE option_name='siteurl';", hostname)
cur.execute("UPDATE wp_options SET option_value='%s' WHERE option_name='home'", hostname)