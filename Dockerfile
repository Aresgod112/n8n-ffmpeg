FROM n8nio/n8n:latest

USER root
RUN apk add --no-cache docker

# Install ffmpeg
RUN apk add --no-cache ffmpeg

# Ensure execute permissions for the 'node' user
RUN chown -R node:node /usr/bin/ffmpeg
RUN chmod +x /usr/bin/ffmpeg

# Switch back to the default user 'node'
USER node
