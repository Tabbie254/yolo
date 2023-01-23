FROM alpine:latest

WORKDIR /usr/src/app
COPY package*.json .
#install npm
RUN npm install
COPY . .
CMD [ "npm", "start" ]

EXPOSE 5000