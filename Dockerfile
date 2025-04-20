# Inherit from the official n8n Docker image
FROM n8nio/n8n:latest

# Install FFmpeg and its dependencies using Alpine's package manager
RUN apk update && apk add --no-cache ffmpeg

# You likely don't need WORKDIR, COPY, or CMD here.

# Any other customizations can be added here.
