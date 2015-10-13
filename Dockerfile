FROM alpine
MAINTAINER Roy Lines <https://roylines.co.uk>

RUN apk add --update wget ca-certificates
RUN rm -rf /var/cache/apk/*

RUN mkdir /etc/nomad.d
RUN chmod a+w /etc/nomad.d

RUN wget https://s3.amazonaws.com/hc-public/nomad/0.1.0dev/nomad_linux_amd64 -O /usr/bin/nomad --no-check-certificate
RUN chmod +x /usr/bin/nomad
