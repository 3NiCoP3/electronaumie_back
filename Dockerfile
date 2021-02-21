FROM php:8.0.2-apache-buster

RUN apt-get upgrade && apt-get update

RUN apt-get install -y \
    make \
    bash \
    git \
    unzip \
    curl \
    vim \
    g++

RUN docker-php-ext-install pdo_mysql

RUN curl -sS https://getcomposer.org/installer | php -- --install-dir=/usr/local/bin --filename=composer

COPY ./composer.json /var/www/html/
COPY ./composer.lock /var/www/html/

RUN composer install

WORKDIR /var/www/html

CMD ["-D","FOREGROUND"]

