FROM ubuntu:xenial
LABEL maintainer="chrisbloemker@gmail.com"

COPY webmin-install.sh /var/tmp
RUN chmod +x /var/tmp/webmin-install.sh
RUN echo "deb https://download.webmin.com/download/repository sarge contrib" >> /etc/apt/sources.list
COPY jcameron-key.asc /var/tmp
RUN apt-key add /var/tmp/jcameron-key.asc
RUN apt update
RUN apt install -y webmin
RUN rm -rf /var/tmp/*
EXPOSE 10000