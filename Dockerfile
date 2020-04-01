# ./docker/php/Dockerfile
FROM php:7.2-cli

ENV PHP_IDE_CONFIG="serverName=zioDocker"

RUN docker-php-ext-install pdo_mysql

RUN pecl install apcu

RUN apt-get update && \
apt-get install -y \
zlib1g-dev \
vim

RUN pecl install -o -f \
  xdebug

RUN docker-php-ext-install zip
RUN docker-php-ext-enable apcu xdebug
ADD etc/php-xdebug.ini /usr/local/etc/php/conf.d/zz-xdebug-settings.ini

RUN curl -sS https://getcomposer.org/installer | php -- --install-dir=/usr/local/bin --filename=composer

WORKDIR /usr/src/app

CMD ["bash"]
