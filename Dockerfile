FROM n8nio/n8n:latest

USER root

RUN apk update && apk add --no-cache ffmpeg

# List the contents of common binary directories
RUN echo "Contents of /usr/bin:" && ls -l /usr/bin
RUN echo "Contents of /usr/local/bin:" && ls -l /usr/local/bin
RUN echo "Contents of /opt/bin:" && ls -l /opt/bin # Another potential location

# ENV PATH="/usr/bin:${PATH}" # We'll add this back if needed

# USER node # ...

# ... other configurations ...
