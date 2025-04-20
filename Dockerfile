FROM n8nio/n8n:latest

USER root

RUN apk update && apk add --no-cache ffmpeg

# Explicitly add /usr/bin to the PATH
ENV PATH="/usr/bin:${PATH}"

# Switch back to the n8n user (if known)
# USER node

# ... other configurations ...
