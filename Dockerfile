FROM stellar/base:latest

MAINTAINER Mat Schaffer <mat@stellar.org>

ENV ATLAS_VERSION 1.4.4

EXPOSE 7101

ADD install /
RUN /install

ADD atlas.conf /
ADD run /

CMD ["/run"]