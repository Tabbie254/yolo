FROM node:14-slim 

WORKDIR /backend

COPY backend/package*.json ./

RUN npm ci

COPY  backend/ . 

EXPOSE 5000

CMD ["npm", "start"]