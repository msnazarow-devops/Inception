#!bin/sh
openrc default
service mariadb setup
service mariadb start
sleep 1
mysqladmin -u root password ${MYSQL_ROOT_PASSWORD}
mysql -e "CREATE DATABASE IF NOT EXISTS $MYSQL_DATABASE"
mysql -e "CREATE USER IF NOT EXISTS '$MYSQL_USER'@'%' IDENTIFIED BY '$MYSQL_PASSWORD';"
mysql -e "CREATE USER IF NOT EXISTS 'sam'@'%' IDENTIFIED BY 'sam';"
mysql -e "GRANT ALL ON $MYSQL_DATABASE.* TO '$MYSQL_USER'@'%' IDENTIFIED BY '$MYSQL_PASSWORD' WITH GRANT OPTION;"
mysql -e "FLUSH PRIVILEGES"
service mariadb stop
mysqld_safe
