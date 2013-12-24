# This file creates a container that runs MySQL Server

FROM base
MAINTAINER nXqd "nxqd.inbox@gmail.com"

RUN apt-get update
RUN apt-get -y install mysql-server

ADD mysql-listen.cnf /etc/mysql/conf.d/mysql-listen.cnf

# Start mysql server
CMD ["/usr/bin/mysqld_safe"]

