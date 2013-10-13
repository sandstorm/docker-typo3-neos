# GENERATES: sandstorm/neos-run

FROM sandstorm/apache-mysql-base
MAINTAINER Sebastian Kurfuerst <sebastian.kurfuerst@sandstorm-media.de>

ADD ./neos-latest.tar.gz /var/www
RUN /start-apache-and-import-site.sh

CMD "/start-apache.sh"