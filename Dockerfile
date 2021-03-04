FROM --platform=linux/amd64 rclone/rclone:latest

LABEL maintainer="melsonlai"

RUN apk add --no-cache fuse

