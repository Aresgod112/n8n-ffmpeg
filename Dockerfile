# Inherit from the official n8n Docker image
FROM n8nio/n8n:latest

# Switch to root user (though usually default for RUN)
USER root

# Install FFmpeg and its dependencies using Alpine's package manager
RUN apk update && apk add --no-cache ffmpeg

# Switch back to the n8n user (if known, for security)
# You might need to inspect the base n8n image to find the correct user
# USER node # Example - replace 'node' with the actual n8n user if applicable

# You likely don't need WORKDIR, COPY, or CMD here.

# Any other customizations can be added here.
