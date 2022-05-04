FROM debian:buster

RUN apt-get update -y && apt-get upgrade -y 
RUN apt-get install -y  mariadb-server mariadb-client
COPY ./conf/50-server.cnf /etc/mysql/mariadb.conf.d/50-server.cnf
COPY ./conf/my.cnf /etc/mysql/my.cnf
COPY ./conf/script.sh /
COPY ./conf/database.sql /
RUN chmod 777 script.sh
ENTRYPOINT sh /script.sh
