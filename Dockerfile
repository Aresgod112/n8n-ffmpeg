# Start with the official Ubuntu image
FROM ubuntu:latest

# Set the working directory
WORKDIR /usr/src/app

# Update and install necessary dependencies
RUN apt-get update && \
    apt-get install -y software-properties-common && \
    add-apt-repository universe && \
    apt-get update && \
    apt-get install -y ffmpeg && \
    apt-get clean

# Copy your application files (if any) into the container (adjust the path as needed)
# COPY . .

# Set the default command for the container (adjust if necessary)
# CMD ["your-command"]
