FROM debian:buster

RUN apt-get update
RUN apt-get -y install apt-utils nginx openssl
# RUN openssl req -newkey rsa:4096 -x509 -nodes -out /etc/nginx/ssl/localhost.pem -keyout /etc/nginx/ssl/localhost.key -subj "/C=FR/ST=Lyon/L=Lyon/O=42 School/OU=emma/CN=localhost"
CMD nginx -g "daemon off;"