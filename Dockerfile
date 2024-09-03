FROM ubuntu:18.04
# MAINTAINER is deprecated use LABEL instead
LABEL MDI (mordiop@yahoo.fr)
RUN apt-get update -y
RUN apt-get upgrade -y
RUN apt-get install -y net-tools
RUN apt-get install -y inetutils-ping
RUN apt-get install -y curl
RUN apt-get install -y nginx
RUN git clone https://github.com/diranetafen/static-website-example.git /var/www/html/
ENTRYPOINT ["/usr/sbin/nginx", "-g", "daemon off;"] 
EXPOSE 80
