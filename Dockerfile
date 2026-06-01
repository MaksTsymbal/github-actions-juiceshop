FROM node:18-slim

RUN apt-get update && \
    apt-get install -y --no-install-recommends \
    git=1:2.* \
    python3=3.* \
    make=4.* \
    g++=4:* && \
    rm -rf /var/lib/apt/lists/* && \
    git clone --depth 1 https://github.com/juice-shop/juice-shop.git /app

WORKDIR /app

RUN npm install --omit=dev

EXPOSE 3000

CMD ["npm", "start"]