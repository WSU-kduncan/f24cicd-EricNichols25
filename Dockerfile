FROM node:16

WORKDIR /usr/src/app

COPY angular-site/package*.json ./

RUN npm install

COPY angular-site/ .

RUN npm run build --configuration production

EXPOSE 4200

CMD ["npm", "start"]
