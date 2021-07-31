# **************************************************************************** #
#                                                                              #
#                                                         :::      ::::::::    #
#    Dockerfile                                         :+:      :+:    :+:    #
#                                                     +:+ +:+         +:+      #
#    By: sgertrud <msnazarow@gmail.com>             +#+  +:+       +#+         #
#                                                 +#+#+#+#+#+   +#+            #
#    Created: 2020/06/24 03:36:49 by sgertrud          #+#    #+#              #
#    Updated: 2021/01/17 09:33:14 by sgertrud         ###   ########.fr        #
#                                                                              #
# **************************************************************************** #

FROM alpine:3.12
EXPOSE 8080
RUN apk  update && apk  upgrade
RUN apk add -q --no-cache wget php-fpm mysql-client
RUN apk add -q --no-cache php-common php-xmlrpc php-soap php-gd php-intl php-cli php-ldap php-zip php-curl php-phar php-json php-mysqli php-mbstring php-phar php-sodium php-openssl pcre php-dom php-exif php-fileinfo php-session
WORKDIR /etc/setup
RUN wget -q https://github.com/vrana/adminer/releases/download/v4.8.1/adminer-4.8.1.php -O index.php
RUN mkdir -p /var/run/php
RUN echo "clear_env = no" >>/etc/php7/php-fpm.conf && echo "clear_env = no" >>/etc/php7/php-fpm.d/www.conf
RUN sed -i "s/listen = 127.0.0.1:9000/listen = adminer:8080/" /etc/php7/php-fpm.d/www.conf
CMD [ "php", "-S", "0.0.0.0:8080", "-t", "/etc/setup/" ]
