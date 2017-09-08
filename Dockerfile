FROM debian:stable
MAINTAINER swapna <test123@gmail.com>

RUN echo "sb" && echo "rp" && echo "sp"

ARG BUILD_VERSION
ENV BUILD_VERSION=$BUILD_VERSION

COPY docker/ /

ENTRYPOINT ["/docker-entrypoint.sh"]

