FROM n8nio/n8n:latest

USER root

RUN apk update --no-cache && \
    apk add --no-cache ffmpeg 2>&1 && \
    which ffmpeg && \
    ffmpeg -version

# Try switching to a known non-root user (common ones are 'node' or 'n8n')
# and then check if ffmpeg is accessible.
USER node
RUN which ffmpeg
RUN ffmpeg -version

# If 'node' doesn't work, try 'n8n'
USER n8n
RUN which ffmpeg
RUN ffmpeg -version

# If neither works, we'll revert to the root user for the n8n process.
# USER node # Or USER n8n

WORKDIR /

ENV PATH="/usr/bin:${PATH}"

RUN chmod +x /usr/bin/ffmpeg

# If we couldn't switch to a non-root user successfully,
# we'll run n8n as root (less ideal for security).
# CMD ["npm", "start"] # The base image likely has a CMD
