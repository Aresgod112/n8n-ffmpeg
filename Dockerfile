FROM n8nio/n8n:latest

USER root

RUN apk update --no-cache && \
    apk add --no-cache ffmpeg 2>&1 && \
    which ffmpeg && \
    ffmpeg -version

WORKDIR /

ENV PATH="/usr/bin:${PATH}"

# We cannot change permissions, so we'll run as root

# CMD ["npm", "start"] # The base image likely has a CMD
