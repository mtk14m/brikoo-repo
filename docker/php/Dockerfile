# docker/php/Dockerfile
FROM php:8.5-cli

# php extensions installer
COPY --from=mlocati/php-extension-installer /usr/bin/install-php-extensions /usr/local/bin/

# System tools for Composer
RUN apt-get update \
    && apt-get install -y --no-install-recommends git unzip \ 
    && rm -rf /var/lib/apt/lists/* \
    && git config --system --add safe.directory /app

# php extensions for project needs
RUN install-php-extensions intl pcov zip

# composer 2, copying the official image 
COPY --from=composer:2 /usr/bin/composer /usr/local/bin/composer

# php project settings
COPY docker/php/conf.d/app.ini /usr/local/etc/php/conf.d/zz-app.ini

WORKDIR /app