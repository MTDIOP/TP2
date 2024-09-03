FROM ubuntu:18.04
RUN apt-get update -y
RUN apt-get upgrade -y
RUN apt-get install -y net-tools
RUN apt-get install -y inetutils-ping
RUN apt-get install -y curl
RUN apt-get install -y nginx
ADD static-website-example/ /var/www/html/ 
ENTRYPOINT ["/usr/sbin/nginx", "-g", "daemon off;"] 
EXPOSE 80
