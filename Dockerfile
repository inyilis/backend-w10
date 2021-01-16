FROM node:latest

RUN mkdir -p /usr/backend

WORKDIR /usr/backend

COPY package*.json ./

COPY . .

RUN npm install

VOLUME /usr/backend

EXPOSE 4000

CMD [ "node", "app.js"]