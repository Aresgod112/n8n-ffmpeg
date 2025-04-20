FROM n8nio/n8n:latest

USER root

RUN apk update --no-cache && \
    apk add --no-cache ffmpeg 2>&1 && \
    which ffmpeg && \
    ffmpeg -version

# Try switching to the 'node' user
USER node
RUN which ffmpeg
RUN ffmpeg -version

WORKDIR /

ENV PATH="/usr/bin:${PATH}"

RUN chmod +x /usr/bin/ffmpeg

# Run n8n as the 'node' user
USER node

# CMD ["npm", "start"] # The base image likely has a CMD
