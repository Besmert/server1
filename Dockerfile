FROM node:20.15

COPY package.json .
COPY package-lock.json .

RUN npm ci

COPY app.js .

EXPOSE 3001:3000

CMD node app.js