FROM debian:buster
RUN apt-get update && apt-get install -y nginx vim openssl wget
COPY conf/default /etc/nginx/sites-available/
COPY conf/script.sh /
RUN chmod 777 script.sh
CMD ["bash", "script.sh"]

