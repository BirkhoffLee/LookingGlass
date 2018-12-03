FROM php:5-apache

ADD . /var/www/html

RUN apt-get update && \
    apt-get -y --no-install-recommends install \
      iputils-ping \
      wget \
      dnsutils \
      telnet \
      tcpdump \
      net-tools \
      iproute2 \
      netcat \
      nmap \
      fping \
      curl \
      host \
      mtr \
      traceroute \
      sqlite3 \
  && apt-get clean \
  && apt-get autoclean
