FROM debian:buster
RUN apt-get update -y && apt-get upgrade -y && \
    apt-get install -y php7.3-fpm php7.3-mysql
COPY /conf/script.sh /
COPY /conf/wp-config.php /
RUN chmod +x /script.sh

ENTRYPOINT sh /script.sh