FROM --platform=linux/arm/v7 rclone/rclone:latest

LABEL maintainer="melsonlai"

COPY qemu-arm-static /usr/bin/

RUN apk add --no-cache fuse

