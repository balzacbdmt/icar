FROM node:16

WORKDIR /usr/src/app

ENV PATH="./node_modules/.bin:$PATH"

COPY package*.json ./

RUN npm install

COPY . .

EXPOSE 8080

CMD ["node", "server.js"]
