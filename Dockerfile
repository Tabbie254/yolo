FROM node:alpine

WORKDIR /usr/src/app
COPY package.jason package-lock.json ./
#install npm
RUN npm ci
COPY . .
CMD [ "npm", "start" ]
EXPOSE 5001