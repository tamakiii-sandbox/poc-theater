FROM amazonlinux:2022.0.20221019.4

RUN curl -1sLf 'https://dl.cloudsmith.io/public/symfony/stable/setup.rpm.sh' | distro=amzn version=2 codename= bash

RUN dnf install -y \
      which \
      less \
      findutils \
      man \
      make

RUN dnf install -y \
      php8.1-cli \
      php8.1-fpm \
      symfony-cli

RUN dnf clean all && \
    rm -rf /var/cache/dnf
