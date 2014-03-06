#!/bin/bash

# clean up website directory
if [ -d "/var/www/buzz_local_env" ]; then
	rm -rf /var/www/buzz_local_env
fi

# create website directory
sudo mkdir /var/www/buzz_local_env
sudo cp ../web_role/*.php /var/www/buzz_local_env

# copy website configuration
sudo rm -f /etc/apache2/sites-enabled/*
sudo cp -f ./dev_env_config/buzz_local /etc/apache2/sites-available/
sudo cp -f ./dev_env_config/httpd.conf /etc/apache2/

# enable web service
sudo a2ensite buzz_local
sudo service apache2 reload
