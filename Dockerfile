FROM node:18-slim

WORKDIR /app

COPY package.json ./

RUN npm install --omit=dev || true

COPY . .

EXPOSE 3000

CMD ["node", "server.js"]