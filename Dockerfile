# Use official n8n image (Alpine-based)
FROM n8nio/n8n:latest

# Switch to root to install ffmpeg
USER root

# Install ffmpeg using Alpine's package manager
RUN apk add --no-cache ffmpeg

# Switch back to node user for running n8n
USER node
