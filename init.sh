#!/bin/bash

new_conf_path=/etc/nginx/sites-enabled/test.conf

sudo rm -rf $new_conf_path
sudo ln -s  /home/box/web/etc/nginx.conf $new_conf_path
sudo rm -rf /etc/nginx/sites-enabled/default
sudo /etc/init.d/nginx restart
#sudo ln -sf /home/box/web/etc/gunicorn.conf /etc/init/gunicorn_test.conf
#sudo /etc/init.d/gunicorn restart
#sudo /etc/init.d/mysql start


