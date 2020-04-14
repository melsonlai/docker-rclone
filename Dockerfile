FROM alpine:latest

LABEL maintainer="melsonlai"

RUN apk add --no-cache bash fuse unzip curl

RUN curl https://rclone.org/install.sh | bash

ENTRYPOINT [ "/usr/bin/rclone" ]
