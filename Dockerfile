FROM n8nio/n8n:latest

USER root

RUN apk update --no-cache && \
    apk add --no-cache ffmpeg

# Ensure /usr/local/bin is in the PATH (common location for user-installed binaries)
ENV PATH="/usr/local/bin:${PATH}:/usr/bin"

# Copy ffmpeg to /usr/local/bin and set permissions
RUN cp /usr/bin/ffmpeg /usr/local/bin/ffmpeg
RUN chown -R node:node /usr/local/bin/ffmpeg
RUN chmod +x /usr/local/bin/ffmpeg

# Switch back to the default user 'node'
USER node
