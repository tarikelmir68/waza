FROM php:apache
COPY ./config/default.conf /etc/apache2/sites-available/000-default.conf
RUN a2enmod ssl
ADD ./config/server.key /etc/private
ADD ./config/server.crt /etc/certs



