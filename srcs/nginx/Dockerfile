# **************************************************************************** #
#                                                                              #
#                                                         :::      ::::::::    #
#    Dockerfile                                         :+:      :+:    :+:    #
#                                                     +:+ +:+         +:+      #
#    By: sgertrud <msnazarow@gmail.com>             +#+  +:+       +#+         #
#                                                 +#+#+#+#+#+   +#+            #
#    Created: 2020/06/24 03:36:49 by sgertrud          #+#    #+#              #
#    Updated: 2021/01/18 09:00:23 by sgertrud         ###   ########.fr        #
#                                                                              #
# **************************************************************************** #

FROM alpine:3.12
EXPOSE 80 443
ARG nginx_location="/etc/nginx/conf.d/default.conf"
ENV nginx_location="${nginx_location}"
RUN apk update && apk  upgrade
RUN apk add -q --no-cache nginx wget openssl openssh
RUN	openssl req -x509 -nodes -days 365 -newkey rsa:2048 -keyout /etc/ssl/private/nginx-selfsigned.key -out /etc/ssl/certs/nginx-selfsigned.crt -subj "/C=RU/ST=Moscow/L=Moscow/O=School 21/CN=sgertrud"
COPY srcs/ .
RUN mv localhost.conf "${nginx_location}"
RUN mkdir /run/nginx/
RUN echo -e "admin\nadmin" | adduser msnazarow && ssh-keygen -A
CMD ["sh", "mysupervisor.sh"]
