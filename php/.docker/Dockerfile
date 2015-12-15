FROM ubuntu:latest
MAINTAINER Andreas Simon <coding@andreas-simon.info>

RUN apt-get update && \
    DEBIAN_FRONTEND=noninteractive apt-get install --yes php5-cli php5-curl
ADD https://getcomposer.org/installer /tmp/
RUN php /tmp/installer --install-dir="/usr/bin" && ln -s /usr/bin/composer.phar /usr/bin/composer
