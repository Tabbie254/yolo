FROM node:slim
EXPOSE 5000


#install npm
RUN npm i npm@latest -g
COPY package.jason package-lock.json ./

RUN npm install --no-optional && npm cache clean --force

#copy in our source code last, as it changes the most
WORKDIR /backend/docback
COPY . .

CMD [ "node", "backend/server.js" ]
ENTRYPOINT npm run start