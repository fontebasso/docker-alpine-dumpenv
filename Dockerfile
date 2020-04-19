FROM alpine:3.11
LABEL maintainer="samuel.txd@gmail.com"

RUN apk add --update-cache \
    python3 \
    py-pip \
    build-base

RUN python3 -m pip install dump-env==1.1.1

WORKDIR /app

ENTRYPOINT [ "dump-env" ]
