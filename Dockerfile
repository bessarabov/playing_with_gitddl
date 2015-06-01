FROM ubuntu:14.04

ENV UPDATED_AT 2015-06-01

RUN apt-get update

RUN apt-get install -y \
    curl \
    gcc \
    git \
    make \
    mysql-client-5.6 \
    perl-doc

RUN curl -L http://cpanmin.us | perl - App::cpanminus
RUN cpanm lib::abs@0.93
RUN cpanm Carton@v1.0.21

ADD cpanfile /app/
ADD cpanfile.snapshot /app/

WORKDIR /app

RUN carton install --deployment

CMD sleep 1000000
