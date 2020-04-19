FROM alpine:3.11
LABEL maintainer="samuel.txd@gmail.com"

RUN apk add --update-cache \
    python \
    py-pip \
    build-base

RUN pip install dump-env=1.1.1

WORKDIR /app

ENTRYPOINT [ "dump-env" ]
