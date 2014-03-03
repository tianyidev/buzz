#!/bin/bash

sudo service apache2 stop

# clean up website directory
if [ -d "/var/www/buzz_local_env" ]; then
	sudo rm -rf /var/www/buzz_local_env
fi

# create website directory
sudo mkdir /var/www/buzz_local_env
sudo cp ../web_role/*.php /var/www/buzz_local_env

# copy website configuration
sudo rm -f /etc/apache2/sites-enabled/buzz_local
sudo cp -f ./dev_env_config/buzz_local /etc/apache2/sites-available/
sudo cp -f ./dev_env_config/httpd.conf /etc/apache2/

# enable web service
sudo service apache2 start
sudo a2ensite buzz_local
sudo service apache2 reload
