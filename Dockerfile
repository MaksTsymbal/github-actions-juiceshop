FROM node:18-slim
 
RUN apt-get update && apt-get install -y --no-install-recommends \
    git \
    python3 \
    make \
    g++ \
    && rm -rf /var/lib/apt/lists/*
 
WORKDIR /app
 
RUN git clone --depth 1 https://github.com/juice-shop/juice-shop.git .
 
RUN npm install --omit=dev
 
EXPOSE 3000
 
CMD ["npm", "start"]
