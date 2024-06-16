
FROM node

WORKDIR /app

COPY package.json /app

RUN npm install

COPY . /app

# VOLUME [ "/app/node_modules" ]

EXPOSE 80

CMD ["node", "server.js"]