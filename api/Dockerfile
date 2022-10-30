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

RUN php -r "copy('https://getcomposer.org/installer', 'composer-setup.php');" && \
    php -r "if (hash_file('sha384', 'composer-setup.php') === '55ce33d7678c5a611085589f1f3ddf8b3c52d662cd01d4ba75c0ee0459970c2200a51f492d557530c71c15d8dba01eae') { echo 'Installer verified'; } else { echo 'Installer corrupt'; unlink('composer-setup.php'); } echo PHP_EOL;" && \
    php composer-setup.php --install-dir=/usr/bin --filename=composer --version 2.4.4 && \
    php -r "unlink('composer-setup.php');"


RUN git config --global user.email "tamakiii@users.noreply.github.com" && \
    git config --global user.name "tamakiii"

RUN ln -s /dev/stderr /var/log/php-fpm/error.log && \
    ln -s /dev/stderr /var/log/php-fpm/www-error.log

COPY docker/etc/php-fpm.conf /etc/php-fpm.conf
COPY docker/etc/php-fpm.d/www.conf /etc/php-fpm.d/www.conf

RUN mkdir /run/php-fpm

CMD ["php-fpm", "--nodaemonize", "--allow-to-run-as-root"]
