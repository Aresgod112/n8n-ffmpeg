FROM node:18-alpine

RUN apk update && apk add --no-cache ffmpeg

WORKDIR /usr/src/app

COPY package*.json ./

RUN ls -la

RUN npm install --only=production

COPY . .

CMD ["npm", "start"]
