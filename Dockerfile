FROM ubuntu:22.04
RUN apt update -y && \
    apt install -y nginx mariadb-server && \
    apt clean
EXPOSE 80 3306
CMD service mysql start && nginx -g 'daemon off;'
