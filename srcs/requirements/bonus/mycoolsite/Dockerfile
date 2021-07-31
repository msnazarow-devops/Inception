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
EXPOSE 5050
RUN apk  update && apk  upgrade
RUN apk add -q --no-cache wget php-fpm openssl mysql-client
RUN apk add -q --no-cache php-common php-xmlrpc php-soap php-gd php-intl php-cli php-ldap php-zip php-curl php-phar php-json php-mysqli php-mbstring php-phar php-sodium php-openssl pcre php-dom php-exif php-fileinfo php-session
WORKDIR /etc/setup
RUN mkdir -p /var/run/php
COPY tools/ .
CMD [ "php", "-S", "0.0.0.0:5050", "-t", "/etc/setup/" ]
