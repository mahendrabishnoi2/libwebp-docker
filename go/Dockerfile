FROM golang:1.20.1-bullseye

LABEL org.opencontainers.image.authors="mahendrabishnoi2@gmail.com"

RUN apt-get update \
    && apt-get -y install sudo wget curl vim git

ENV LIBWEBP_DIR=/usr/local/libwebp
ENV PATH $LIBWEBP_DIR/bin:$PATH
RUN mkdir -p "$LIBWEBP_DIR"

RUN set -eux; \
    wget -O /tmp/libwebp.tar.gz "https://storage.googleapis.com/downloads.webmproject.org/releases/webp/libwebp-1.2.4-linux-x86-64.tar.gz"; \
	tar -xzf /tmp/libwebp.tar.gz -C "$LIBWEBP_DIR" --strip-components=1; \
	rm -f /tmp/libwebp.tar.gz;
