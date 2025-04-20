FROM n8nio/n8n:latest

USER root

# Install ffmpeg using Alpine's package manager
RUN apk add --no-cache ffmpeg

# Return to the n8n user
USER node
