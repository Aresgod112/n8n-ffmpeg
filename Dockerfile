FROM n8nio/n8n:latest

USER root

RUN apk update && \
    apk add --no-cache ffmpeg && \
    which ffmpeg && \
    ffmpeg -version

# ENV PATH="/usr/bin:${PATH}" # We'll add this back if needed

# USER node

# ... other configurations ...
