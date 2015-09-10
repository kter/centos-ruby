FROM centos:6

RUN yum -y update

RUN yum install -y gcc tar dbm-devel gdbm-devel openssl-devel readline-devel tk-devel zlib-devel

WORKDIR /usr/local/src

RUN curl https://cache.ruby-lang.org/pub/ruby/2.2/ruby-2.2.3.tar.gz | tar zx && cd ruby-2.2.3 && ./configure && make install

WORKDIR /
