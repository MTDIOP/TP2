FROM ubuntu:22.04
RUN apt-get update -y
RUN apt-get upgrade -y
RUN apt-get install -y net-tools
RUN apt-get install -y inetutils-ping
RUN apt-get install -y curl
RUN apt-get install -y nginx
CMD hostname mdi-nginx