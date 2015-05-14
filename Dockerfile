FROM gliderlabs/alpine:3.1
MAINTAINER John Regan <john@jrjrtech.com>

COPY rootfs /

ADD https://github.com/just-containers/s6-overlay/releases/download/v1.10.0.2/s6-overlay-amd64.tar.gz /tmp/s6-overlay.tar.gz
RUN tar xvfz /tmp/s6-overlay.tar.gz -C /

ENTRYPOINT ["/init"]
CMD []
