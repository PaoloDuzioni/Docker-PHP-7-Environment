FROM php:7.0-apache
RUN apt-get update && apt-get install -y \
    php5-curl libcurl4-gnutls-dev libxml2-dev libpng-dev php5-gd php5-mcrypt php5-xmlrpc && \
    a2enmod rewrite
RUN docker-php-ext-install curl mysqli pdo pdo_mysql curl xml gd

# Install Xdebug
RUN curl -fsSL 'https://xdebug.org/files/xdebug-2.4.0.tgz' -o xdebug.tar.gz \
    && mkdir -p xdebug \
    && tar -xf xdebug.tar.gz -C xdebug --strip-components=1 \
    && rm xdebug.tar.gz \
    && ( \
    cd xdebug \
    && phpize \
    && ./configure --enable-xdebug \
    && make -j$(nproc) \
    && make install \
    ) \
    && rm -r xdebug \
    && docker-php-ext-enable xdebug

EXPOSE 8080
COPY . /var/www/html/


