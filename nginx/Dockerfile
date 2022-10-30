FROM amazonlinux:2022.0.20221019.4

RUN dnf install -y \
      which \
      nginx \
      && \
    dnf clean all && \
    rm -rf /var/cache/dnf

RUN ln -s /dev/stdout /var/log/nginx/access.log && \
    ln -s /dev/stderr /var/log/nginx/error.log && \
    ln -s /dev/stdout /var/log/nginx/access_ssl.log && \
    ln -s /dev/stderr /var/log/nginx/error_ssl.log

COPY docker/etc/nginx/conf.d/default.conf /etc/nginx/conf.d/default.conf

CMD ["nginx", "-g", "daemon off;"]
