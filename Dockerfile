# Inherit from the official n8n Docker image
FROM n8nio/n8n:latest

# Install FFmpeg and its dependencies
# Determine the package manager based on the base image.
# Let's try 'apt-get' first, as it's common. If it fails, we can try 'apk'.
RUN apt-get update && apt-get install -y ffmpeg

# If the above fails, try this instead (for Alpine-based images):
# RUN apk update && apk add --no-cache ffmpeg

# You likely don't need WORKDIR, COPY, or CMD here,
# as the base n8n image handles those.

# Any other customizations you need for your n8n instance can be added here
# using additional RUN commands or ENV variables.
