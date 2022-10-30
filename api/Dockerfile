FROM amazonlinux:2022.0.20221019.4

RUN curl -1sLf 'https://dl.cloudsmith.io/public/symfony/stable/setup.rpm.sh' | distro=amzn version=2 codename= bash

RUN dnf install -y \
      which \
      less \
      findutils \
      man \
      git \
      make

RUN dnf install -y \
      php8.1-cli \
      php8.1-fpm \
      php8.1-xml \
      php8.1-mbstring \
      php8.1-pdo \
      php8.1-opcache \
      php8.1-process \
      php8.1-intl \
      symfony-cli

RUN dnf clean all && \
    rm -rf /var/cache/dnf
