FROM node:18-alpine

WORKDIR /usr/src/app

COPY package*.json ./

RUN npm install

COPY angular-site/ .

RUN npm run build -- --configuration production

EXPOSE 4200

CMD ["npm", "start"]
