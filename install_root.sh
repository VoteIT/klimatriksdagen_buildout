#!/bin/bash
#Ment to be run as root after buildout is done. Will obtain cert and install on nginx debian

cd /etc/nginx
ln -s /home/voteit/srv/klimatriksdagen_buildout/etc/nginx.conf ./sites-available/klimatriksdagen.conf
ln -s ./sites-available/klimatriksdagen.conf ./sites-enabled/.

service nginx stop
certbot certonly --standalone -d klimatriksdagen.voteit.se
service nginx start
