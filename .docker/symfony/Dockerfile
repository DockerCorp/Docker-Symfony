FROM php:8.1-fpm-alpine

# Php
RUN apk add icu-dev
RUN docker-php-ext-install intl opcache
RUN docker-php-ext-configure intl
RUN mv "$PHP_INI_DIR/php.ini-production" "$PHP_INI_DIR/php.ini"

# Composer
RUN wget https://getcomposer.org/installer -O - | \
    php -- --install-dir=/usr/local/bin --filename=composer

# Symfony CLI
RUN curl https://api.github.com/repos/symfony-cli/symfony-cli/releases/latest | \
    grep -Eo '"(https:.*?'`arch`'.apk)"' | \
    grep -Eo '[^"].*[^"]' | \
    xargs wget -O /tmp/symfony-cli.apk && \
    apk add --allow-untrusted /tmp/symfony-cli.apk && \
    rm -f /tmp/symfony-cli.apk

WORKDIR /var/www/APP

COPY entrypoint.sh /entrypoint.sh

ENTRYPOINT /entrypoint.sh
