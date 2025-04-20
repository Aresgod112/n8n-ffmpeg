FROM node:18-alpine

RUN apk update && apk add --no-cache ffmpeg

WORKDIR /usr/src/app

# Copy package.json and lock file first to leverage Docker cache
COPY package*.json ./

RUN npm install --only=production

# Copy the rest of your application code
COPY . .

CMD ["npm", "start"]
