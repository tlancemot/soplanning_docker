FROM php:8.1.5-apache
RUN a2enmod rewrite
RUN docker-php-ext-install mysqli pdo pdo_mysql && docker-php-ext-enable pdo_mysql
RUN apt-get update && apt-get install -y \
		libfreetype6-dev \
		libjpeg62-turbo-dev \
		libpng-dev zlib1g-dev \
	&& docker-php-ext-configure gd --with-freetype --with-jpeg \
	&& docker-php-ext-install -j$(nproc) gd zip
RUN mv "$PHP_INI_DIR/php.ini-production" "$PHP_INI_DIR/php.ini"
COPY soplanning/ /var/www/html
COPY database.inc /var/www/html/database.inc
RUN chown -R www-data:www-data /var/www/html
USER www-data
