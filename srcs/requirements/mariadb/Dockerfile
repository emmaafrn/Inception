FROM debian:buster

RUN apt-get update && apt-get upgrade -y
RUN apt-get -y install mariadb-server
RUN service mysql start && mysqladmin -u root password root && mysql -u root -e "CREATE DATABASE wordpress; GRANT ALL PRIVILEGES ON wordpress.* TO 'root'@'localhost' WITH GRANT OPTION; FLUSH PRIVILEGES;"
CMD ["mysqld_safe", "--bind-address=0.0.0.0"]
