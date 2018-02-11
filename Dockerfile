FROM ubuntu:16.04

RUN apt-get update && apt-get install -y wget
RUN apt-get -y install \
    imagemagick \
    graphicsmagick \
    libcairo2-dev \
    wkhtmltopdf \
    poppler-utils \
    libjpeg-dev \
    qt4-default \
    lsb-release \
    apt-transport-https \
    ca-certificates \
    curl \
    xvfb

RUN cd /lib/x86_64-linux-gnu;ln -s /usr/lib/x86_64-linux-gnu/mesa/libGL.so.1.2.0 libGL.so;ln -s /usr/lib/x86_64-linux-gnu/mesa/libGL.so.1.2.0 libGL.so.1
RUN echo '#!/bin/sh' >> /usr/local/bin/wkhtmltopdf; echo 'xvfb-run -a -s "-screen 0 640x480x16" /usr/bin/wkhtmltopdf "$@"' >> /usr/local/bin/wkhtmltopdf
RUN chmod a+x /usr/local/bin/wkhtmltopdf
RUN apt-get -y install putty-tools
RUN cd /usr/local/share;wget https://www.opscaptain.com/__xbin/phantomjs-2.1.1-linux-x86_64.tar.bz2 > /dev/null; tar xjf phantomjs-2.1.1-linux-x86_64.tar.bz2  > /dev/null;ln -s -f /usr/local/share/phantomjs-2.1.1-linux-x86_64/bin/phantomjs /usr/local/share/phantomjs;ln -s -f /usr/local/share/phantomjs-2.1.1-linux-x86_64/bin/phantomjs /usr/local/bin/phantomjs;ln -s -f /usr/local/share/phantomjs-2.1.1-linux-x86_64/bin/phantomjs /usr/bin/phantomjs
RUN apt-get -y install libssl1.0.0 libssl-dev;cd /lib/x86_64-linux-gnu;ln -s libssl.so.1.0.0 libssl.so.10;ln -s libcrypto.so.1.0.0 libcrypto.so.10
RUN apt-get install -y libkrb5-dev

RUN apt-get update
RUN apt-get upgrade -y
RUN apt-get install -y \
    autoconf \
    bind9-host \
    bison \
    build-essential \
    coreutils \
    curl \
    daemontools \
    dnsutils \
    ed \
    git \
    iputils-tracepath \
    language-pack-en \
    libbz2-dev \
    libcurl4-openssl-dev \
    libevent-dev \
    libev-dev \
    libglib2.0-dev \
    libmagickwand-dev \
    libmysqlclient-dev \
    libncurses5-dev \
    libpq-dev \
    libpq5 \
    librdkafka-dev \
    libreadline6-dev \
    libssl-dev \
    libxml2-dev \
    libxslt-dev \
    libuv-dev \
    netcat-openbsd \
    openssh-client \
    openssh-server \
    postgresql-client-9.5 \
    python \
    python-dev \
    ruby \
    ruby-dev \
    socat \
    stunnel \
    syslinux \
    tar \
    telnet \
    zip \
    zlib1g-dev \
    sudo; 
