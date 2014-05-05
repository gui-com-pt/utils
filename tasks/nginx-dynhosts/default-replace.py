#!/usr/bin/python

print "\n### Create Nginx Virtual Host ###"
print "\nWhat's the hostname? Ie: yourwebsite.com, mywebsite.com (only domain without www or http)"
vhost = str(raw_input('hostname: '))
print "\nChoose a proper configuration"
print "\n# 1 - PHP standalone application"
print "\n# 2 - Wordpress"
infile = open('/etc/nginx/sites-available/defaul')
outfile = open('/etc/nginx/sites-available/', 'w')

body = """
		listen 80;
		index index.php;
		root /var/www/$VHOST/public
		server_name $VHOST
		location / {
            try_files $uri $uri/ /index.php?$args;
        }

        location ~* \.(js|css|png|jpg|jpeg|gif|ico)$ {
                expires 24h;
                log_not_found off;
        }

		location ~ \.php$ {
                fastcgi_split_path_info ^(.+\.php)(/.+)$;
                fastcgi_pass php;
                fastcgi_index index.php;
                include fastcgi_params;
        }
	"""