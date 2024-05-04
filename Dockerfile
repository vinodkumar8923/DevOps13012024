FROM ubuntu
MAINTAINER "TEAM@GURU"
RUN apt update -y  && apt install net-tools -y  && apt install apache2 -y
VOLUME /var/lib/docker/
WORKDIR /var/www/html
EXPOSE 80 443
CMD ["/usr/sbin/apache2ctl","-D","FOREGROUND"]




