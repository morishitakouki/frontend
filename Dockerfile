FROM node:lts-slim

WORKDIR /front

COPY ["package.json", "package-lock.json*", "./"]

RUN npm install -g npm@8.10.0
RUN npm install

COPY . ./

RUN npm run build

ENV CI=true
