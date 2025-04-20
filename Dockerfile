FROM n8nio/n8n:latest

USER root

RUN apk update --no-cache && \
    apk add --no-cache ffmpeg 2>&1 && \
    which ffmpeg && \
    ffmpeg -version

# Explicitly add /usr/bin to the PATH
ENV PATH="/usr/bin:${PATH}"

# Set execute permissions for ffmpeg
RUN chmod +x /usr/bin/ffmpeg

# Switch back to the n8n user (if known)
# USER node

# ... other configurations ...
