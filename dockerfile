FROM ubuntu
MAINTAINER 'Team&techagni"
RUN apt update -y && apt install apache2 -y && apt install net-tools
COPY ./index.html  /var/www/html
VOLUME /var/www/html
EXPOSE 80 443
CMD ["/usr/sbin/apache2ctl","-D","FOREGROUND"]
