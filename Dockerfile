FROM node:16

RUN groupadd -r appuser-group && useradd -r -g appuser-group appuser

WORKDIR /app

COPY package*.json ./

RUN npm install

COPY . .

RUN chown -R appuser:appuser-group /app

USER appuser

EXPOSE 3000

CMD ["node", "server.js"]
