FROM php:7.4.6-fpm-alpine3.11

RUN apk add bash \
    && docker-php-ext-install pdo pdo_mysql

WORKDIR /var/www

RUN rm -rf /var/www/html

COPY . /var/www

EXPOSE 9000

ENTRYPOINT [ "php-fpm" ]