FROM arm32v6/alpine:latest

LABEL maintainer="melsonlai"

COPY qemu-arm-static /usr/bin/

RUN apk add --no-cache fuse

COPY rclone /usr/bin/rclone
RUN chmod +x /usr/bin/rclone

ENTRYPOINT [ "/usr/bin/rclone" ]
