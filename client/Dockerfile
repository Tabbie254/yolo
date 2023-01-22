FROM node:slim
#create app directory
WORKDIR /client/src/docclient

#install app dependancies
COPY package.json ./

RUN npm install
#copy app source code
COPY . .

#Expose port and start application
EXPOSE 3000
CMD [ "npm", "start" ]