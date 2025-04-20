# Start from a base image (e.g., Node.js or Python)
FROM node:16-slim

# Install ffmpeg and other dependencies
RUN apt-get update && apt-get install -y ffmpeg

# Set the working directory
WORKDIR /app

# Copy your project files
COPY . /app

# Install dependencies (for example, if you're using Node.js)
RUN npm install

# Expose the necessary port (e.g., for a web app)
EXPOSE 3000

# Start your application (adjust to your app)
CMD ["npm", "start"]
