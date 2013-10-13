# GENERATES: sandstorm/apache-mysql-base

FROM ubuntu
MAINTAINER Sebastian Kurfuerst <sebastian.kurfuerst@sandstorm-media.de>

RUN echo deb http://archive.ubuntu.com/ubuntu precise universe >> /etc/apt/sources.list
RUN apt-get update
RUN apt-get install -q -y php5 php5-mysql mysql-server
RUN apt-get install -q -y php5-gd

# create empty "flowdb" database
RUN mysqld & sleep 2 && mysqladmin create flowdb

ADD ./apache-php-config /

# the vagrant user has UID 1000, so we need to create a user inside the VM as well.
# TODO: should be configurable later to the current-user.
RUN useradd -m -u 1000 flowuser
EXPOSE 80

CMD "/start-apache-and-import-site.sh"