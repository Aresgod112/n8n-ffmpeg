FROM node:18-alpine

# Update package lists
RUN apk update

# Install FFmpeg and its dependencies
RUN apk add --no-cache ffmpeg

# Set the working directory (adjust if needed for n8n)
WORKDIR /usr/src/app

# Copy package.json and package-lock.json (if you have them)
COPY package*.json ./

# Install n8n dependencies (adjust if needed)
RUN npm install --only=production

# Copy your n8n workflow files and any other application code
COPY . .

# Specify the command to run n8n (adjust if needed)
CMD ["npm", "start"]
