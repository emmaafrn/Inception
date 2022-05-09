FROM alpine:3.14.0

COPY start.sh /data/.
WORKDIR /data/.
RUN apk add --update php7-fpm php7-json php7-zlib php7-xml php7-xmlwriter php7-simplexml php7-pdo php7-phar php7-openssl \
    php7-pdo_mysql php7-mysqli php7-session \
    php7-gd php7-iconv php7-mcrypt php7-gmp php7-zip \
    php7-curl php7-opcache php7-ctype php7-apcu \
    php7-intl php7-bcmath php7-dom php7-mbstring php7-xmlreader
RUN apk add --update \
		wget tar \
		curl bash \
		mysql mysql-client openrc \
		&& curl -O https://raw.githubusercontent.com/wp-cli/builds/gh-pages/phar/wp-cli.phar  \
		&& chmod +x wp-cli.phar \
		&& mv wp-cli.phar /usr/bin/wp
RUN apk --update add --no-cache \
		bash \
		curl \
		php \
		php-fpm \
		php-iconv \
		php-json \
		php-mysqli \
		php-phar \
		mariadb-client \
		&& apk add php7 php7-fpm php7-opcache sudo \
		&& apk add --no-cache mysql
CMD ["bash", "start.sh"]
