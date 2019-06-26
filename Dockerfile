FROM arm32v6/alpine:latest

LABEL maintainer="melsonlai"

COPY qemu-arm-static /usr/bin/

RUN apk add --no-cache bash fuse unzip curl

RUN curl https://rclone.org/install.sh | bash

RUN apk del bash unzip curl

ENTRYPOINT [ "/usr/bin/rclone" ]
