FROM n8nio/n8n:latest

USER root
RUN apk add --no-cache docker

# Install ffmpeg
RUN apk add --no-cache ffmpeg

# Switch back to the default user 'node'
USER node
