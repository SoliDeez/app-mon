FROM wordpress:latest AS wordpress_redis

WORKDIR /var/www/html

COPY redis-cache /var/www/html/wp-content/plugins/redis-cache/

COPY wp-config-docker.php /usr/src/wordpress/wp-config-docker.php


#ENTRYPOINT ["docker-entrypoint.sh"]
ENTRYPOINT ["docker-entrypoint.sh"]

#CMD ["php-fpm"]
CMD ["apache2-foreground"]
