FROM php:5-apache

RUN apt-get update \
	&& apt-get -y install \
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
    git \
    ssh \
  && git clone https://github.com/BirkhoffLee/LookingGlass --branch master --single-branch /var/www/html/ \
  && apt-get clean \
  && apt-get autoclean
