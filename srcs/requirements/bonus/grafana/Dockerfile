# **************************************************************************** #
#                                                                              #
#                                                         :::      ::::::::    #
#    Dockerfile                                         :+:      :+:    :+:    #
#                                                     +:+ +:+         +:+      #
#    By: sgertrud <msnazarow@gmail.com>             +#+  +:+       +#+         #
#                                                 +#+#+#+#+#+   +#+            #
#    Created: 2021/01/17 13:06:53 by sgertrud          #+#    #+#              #
#    Updated: 2021/01/18 18:41:40 by sgertrud         ###   ########.fr        #
#                                                                              #
# **************************************************************************** #

FROM alpine:3.12
EXPOSE 3000
WORKDIR /usr/share/grafana
RUN apk update
RUN apk add grafana --repository http://nl.alpinelinux.org/alpine/edge/community/
COPY tools/dashboards.yml /usr/share/grafana/conf/provisioning/dashboards/
COPY tools/datasources.yml /usr/share/grafana/conf/provisioning/datasources/
COPY tools/custom.ini /usr/share/grafana/conf
COPY tools/all_dashes.json /usr/share/grafana/public/dashboards/home.json
CMD ["grafana-server", "web"]