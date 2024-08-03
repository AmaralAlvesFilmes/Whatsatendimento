# Use a imagem oficial do Node.js 20 como base
FROM node:20-slim

RUN apt update && apt install -y curl wget

WORKDIR /usr/src/app

RUN npm install -g vite

RUN ln -s /usr/local/bin/node /usr/bin/node

ENTRYPOINT ["npx", "-y", "evolution-manager", "server", "start"]

EXPOSE 9615
