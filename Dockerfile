FROM node:lts-slim

WORKDIR /front

COPY ["package.json", "package-lock.json*", "./"]

RUN npm install -g npm@8.10.0
RUN npm install

 RUN npm install -g serve

COPY . .



RUN npm run build

# この行は必要に応じて
ENV CI=true

# npm startを直接実行するように変更する必要はありません
CMD ["serve", "-s", "build"]