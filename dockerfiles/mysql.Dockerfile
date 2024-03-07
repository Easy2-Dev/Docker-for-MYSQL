FROM mysql:5.7.32

RUN usermod -u 1000 mysql && \
    groupmod -g 1000 mysql && \
    chown -R mysql:mysql /var/lib/mysql
RUN echo "mysql ALL=(ALL) NOPASSWD: ALL" >> /etc/sudoers