FROM debian:buster

RUN apt-get update
RUN apt-get -y install apt-utils nginx openssl
COPY ./oyeah.conf /etc/nginx/sites-available/default
RUN ln -f /etc/nginx/sites-available/default /etc/nginx/sites-enabled/default
RUN openssl req -newkey rsa:4096 -x509 -nodes -out /etc/ssl/localhost.pem -keyout /etc/ssl/localhost.key -subj "/C=FR/ST=Lyon/L=Lyon/O=42 School/OU=emma/CN=localhost"
# CMD bash -c 'chgrp -R www-data /var/www/html/wordpress && exec nginx -g "daemon off;"'
CMD nginx -g "daemon off;"