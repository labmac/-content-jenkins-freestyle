FROM debian:stable
MAINTAINER swapna <swapnahdp9@gmail.com>

RUN echo "sai" && echo "ram" && echo "swapna"

ARG BUILD_VERSION
ENV BUILD_VERSION=$BUILD_VERSION

COPY docker/ /

ENTRYPOINT ["/docker-entrypoint.sh"]

