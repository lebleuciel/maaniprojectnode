FROM node:16-alpine

RUN mkdir -p /node/src/maani && chown -R node:node /node/src/maani

WORKDIR /node/src/maani

COPY package*.json ./

USER node

RUN npm install

COPY --chown=node:node . .

EXPOSE 8080

CMD [ "node", "server.js" ]