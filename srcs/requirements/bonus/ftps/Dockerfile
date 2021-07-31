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
EXPOSE 20 21 $FTPPORT
RUN apk update && apk upgrade
RUN apk add --no-cache vsftpd
COPY tools/ .
RUN mv selfsigned.key /etc/ssl/private/selfsigned.key
RUN mv selfsigned.crt /etc/ssl/certs/selfsigned.crt
RUN echo -e "admin\nadmin" | adduser msnazarow
WORKDIR /etc/setup/wordpress
CMD ["sh", "/run.sh"]