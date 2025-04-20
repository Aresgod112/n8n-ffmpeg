FROM n8nio/n8n:latest

USER root

RUN apk update && apk add --no-cache ffmpeg

# Search for the ffmpeg executable
RUN find / -name "ffmpeg" -print

# RUN echo "Contents of /usr/bin:" && ls -l /usr/bin
# RUN echo "Contents of /usr/local/bin:" && ls -l /usr/local/bin
# RUN echo "Contents of /opt/bin:" && ls -l /opt/bin

# ENV PATH="/usr/bin:${PATH}"

# USER node

# ... other configurations ...
