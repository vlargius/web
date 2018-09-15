#!/bin/bash

new_conf_path=/etc/nginx/sites-enabled/test.conf

sudo rm -rf $new_conf_path
sudo ln -s  /home/box/web/etc/nginx.conf $new_conf_path
sudo rm -rf /etc/nginx/sites-enabled/default
sudo /etc/init.d/nginx restart
#sudo ln -s ./etc/gunicorn.conf /etc/gunicorn.d/test
#sudo /etc/init.d/gunicorn restart
#sudo /etc/init.d/mysql start


