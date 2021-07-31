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
RUN apk  update && apk  upgrade
RUN apk add -q --no-cache wget php-fpm mysql-client
RUN apk add -q --no-cache php-common php-xmlrpc php-soap php-gd php-intl php-cli php-ldap php-zip php-curl php-phar php-json php-mysqli php-mbstring php-phar php-sodium php-openssl pcre php-dom php-exif php-fileinfo redis
WORKDIR /etc/setup
RUN wget -q https://wordpress.org/latest.tar.gz https://raw.githubusercontent.com/wp-cli/builds/gh-pages/phar/wp-cli.phar
COPY tools/ .
RUN chmod +x *.sh wp-cli.phar
RUN mv wp-cli.phar /usr/local/bin/wp
RUN mkdir -p /var/run/php
RUN echo "clear_env = no" >>/etc/php7/php-fpm.conf && echo "clear_env = no" >>/etc/php7/php-fpm.d/www.conf
RUN sed -i "s/listen = 127.0.0.1:9000/listen = wordpress:9000/" /etc/php7/php-fpm.d/www.conf
CMD [ "sh", "run.sh" ]