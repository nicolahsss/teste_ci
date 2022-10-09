FROM php:8.1-apache-buster

ARG DEBIAN_FRONTEND=noninteractive

RUN mv "$PHP_INI_DIR/php.ini-production" "$PHP_INI_DIR/php.ini"
RUN echo "expose_php = false" | tee -a "$PHP_INI_DIR/php.ini"
RUN echo "memory_limit = 64M" | tee -a "$PHP_INI_DIR/php.ini"
RUN echo "post_max_size = 8M" | tee -a "$PHP_INI_DIR/php.ini"
RUN echo "upload_max_filesize = 2M"  | tee -a "$PHP_INI_DIR/php.ini"

WORKDIR /var/www/html

COPY . .

RUN composer install --no-interaction --no-progress --no-suggest --no-dev --optimize-autoloader --ansi --ignore-platform-reqs

EXPOSE 80
