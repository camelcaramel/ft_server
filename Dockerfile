FROM debian:buster

RUN apt update
RUN apt install -y nginx\
	mariadb-server \
	php-mysql \
	php-mbstring \
	wget \
	php7.3-fpm
RUN service nginx start
RUN service php7.3-fpm start
RUN service mysql start

# blowfish 설정
# coifig wp-config => wordpress config