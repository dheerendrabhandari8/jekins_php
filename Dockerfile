FROM php:7.3-apache
COPY /var/lib/jenkins/workspace/php_project/index.php /var/www/html/
