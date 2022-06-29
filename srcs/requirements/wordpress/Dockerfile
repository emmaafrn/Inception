FROM alpine:3.14.0

EXPOSE 9000

RUN wget https://raw.githubusercontent.com/wp-cli/builds/gh-pages/phar/wp-cli.phar
RUN chmod +x wp-cli.phar
RUN mv wp-cli.phar /usr/local/bin/wp

RUN apk add --update wget curl bash util-linux openrc mysql-client git\
					php \
					php-fpm \
					php-iconv \
					php-json \
					php-mysqli \
					php-phar

COPY www.conf /etc/php7/php-fpm.d/www.conf

WORKDIR /tmp

COPY ./start.sh .

CMD	["/bin/bash", "start.sh"]