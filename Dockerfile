# Use official Ubuntu as base image
FROM ubuntu:latest

# Install dependencies
RUN apt-get update && \
    apt-get install -y \
    ffmpeg \
    && apt-get clean

# Set the working directory (optional)
WORKDIR /usr/src/app

# Command to run when the container starts
CMD ["ffmpeg", "-version"]
