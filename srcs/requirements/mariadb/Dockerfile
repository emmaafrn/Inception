FROM debian:buster

RUN apt-get update && apt-get upgrade -y
RUN apt-get -y install mariadb-server
RUN service mysql start && \
	mysql -u root -e "CREATE DATABASE wordpress; GRANT ALL PRIVILEGES ON wordpress.* TO 'root'@'localhost' WITH GRANT OPTION; CREATE USER 'user1' IDENTIFIED BY 'pass5'; GRANT ALL PRIVILEGES ON wordpress.* TO 'user1'@'%';FLUSH PRIVILEGES;" && \
	# mysql -u root -e "CREATE DATABASE wordpress; CREATE USER 'user1' IDENTIFIED BY 'pass5'; GRANT ALL PRIVILEGES ON wordpress.* TO 'root'@'localhost' WITH GRANT OPTION; GRANT ALL PRIVILEGES ON wordpress.* TO 'user1'@'%';FLUSH PRIVILEGES;" && \
	mysqladmin -u root password root
RUN sed -i 's/bind-address/bind-address = 0.0.0.0 #/i' /etc/mysql/mariadb.conf.d/50-server.cnf
CMD ["mysqld_safe"]
