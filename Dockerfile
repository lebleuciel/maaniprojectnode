FROM node:16-alpine

RUN mkdir -p /node/src/maani && chown -R node:node /node/src/maani

WORKDIR /node/src/maani

COPY package*.json ./

USER node

COPY --chown=node:node . .

RUN npm install

EXPOSE 8081

CMD [ "node", "server.js" ]