FROM alpine:latest as base
ARG TARGETARCH


LABEL maintainer="Saswat Padhi saswat.sourav@gmail.com"


FROM base AS base-amd64
ENV S6_OVERLAY_ARCH=amd64

FROM base AS base-386
ENV S6_OVERLAY_ARCH=x86

FROM base AS base-arm64
ENV S6_OVERLAY_ARCH=aarch64

FROM base AS base-armv7
ENV S6_OVERLAY_ARCH=armhf

FROM base AS base-armv6
ENV S6_OVERLAY_ARCH=arm

FROM base AS base-ppc64le
ENV S6_OVERLAY_ARCH=ppc64le

FROM base-${TARGETARCH}${TARGETVARIANT}


ARG S6_OVERLAY_VERSION=v2.0.0.1


ARG GPG_PUB_KEY=https://keybase.io/justcontainers/key.asc
ADD ${GPG_PUB_KEY} /tmp/key.asc

ARG S6_OVERLAY_RELEASE=https://github.com/just-containers/s6-overlay/releases/download/${S6_OVERLAY_VERSION}/s6-overlay-${S6_OVERLAY_ARCH}.tar.gz
ADD ${S6_OVERLAY_RELEASE} /tmp/s6-overlay.tar.gz

ARG S6_OVERLAY_GPG_SIG=https://github.com/just-containers/s6-overlay/releases/download/${S6_OVERLAY_VERSION}/s6-overlay-${S6_OVERLAY_ARCH}.tar.gz.sig
ADD ${S6_OVERLAY_GPG_SIG} /tmp/s6-overlay.tar.gz.sig


RUN apk add --no-cache --purge -uU gnupg \
 && gpg --import /tmp/key.asc \
 && gpg --batch --verify /tmp/s6-overlay.tar.gz.sig \
                         /tmp/s6-overlay.tar.gz \
 && apk upgrade --update --no-cache \
 && tar xzf /tmp/s6-overlay.tar.gz -C / \
 && apk del --purge gnupg \
 && rm -rf /tmp/* \
           /var/cache/apk/* \
 && mkdir -p /etc/cont-finish.d \
             /etc/cont-init.d \
             /etc/fix-attrs.d \
             /etc/services.d

ENTRYPOINT [ "/init" ]
