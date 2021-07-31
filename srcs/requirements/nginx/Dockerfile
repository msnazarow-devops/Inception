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
EXPOSE 443
ARG nginx_location="/etc/nginx/conf.d/default.conf"
ENV nginx_location="${nginx_location}"
RUN apk update && apk  upgrade
RUN apk add -q --no-cache nginx
COPY tools/ .
RUN mv localhost.conf "${nginx_location}"
RUN mv nginx-selfsigned.key /etc/ssl/private/nginx-selfsigned.key
RUN mv nginx-selfsigned.crt /etc/ssl/certs/nginx-selfsigned.crt
RUN mkdir /run/nginx/
CMD ["nginx", "-g", "daemon off;"]
