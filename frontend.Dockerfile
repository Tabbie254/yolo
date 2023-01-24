FROM node:14-slim 

WORKDIR /app

COPY client/package*.json ./

RUN npm install

COPY client/ .

EXPOSE 3000

CMD ["npm", "start"]
