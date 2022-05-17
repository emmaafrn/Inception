FROM debian:buster

ARG MYSQL_USER
ARG MYSQL_PASSWORD

RUN apt-get update && apt-get upgrade -y
RUN apt-get -y install mariadb-server
RUN service mysql start && \
	mysql -u root -e "CREATE DATABASE wordpress; GRANT ALL PRIVILEGES ON wordpress.* TO root@'localhost' WITH GRANT OPTION; CREATE USER '$MYSQL_USER'@'%' IDENTIFIED BY '$MYSQL_PASSWORD'; GRANT ALL PRIVILEGES ON wordpress.* TO '$MYSQL_USER'@'%'; DELETE FROM mysql.user WHERE User='';FLUSH PRIVILEGES;" && \
	mysqladmin -u root password root
RUN sed -i 's/bind-address/bind-address = 0.0.0.0 #/i' /etc/mysql/mariadb.conf.d/50-server.cnf
CMD ["mysqld_safe"]
