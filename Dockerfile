# Install docker (needed for some features)
    RUN apk add --no-cache docker

    # Install ffmpeg
    RUN apk add --no-cache ffmpeg

    # Switch back to the default user 'node'
    USER node
