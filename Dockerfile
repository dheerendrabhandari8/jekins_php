FROM php:7.3-apache
COPY ./workspace/php_project/*.php* /var/www/html/
