#!/bin/bash

yum install httpd -y

service httpd start

cp index.html /var/www/html/

cp test.html /var/www/html/
