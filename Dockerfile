FROM node:18-bullseye

WORKDIR /usr/src/app

COPY ..

RUN npm install -g @angular/cli

WORKDIR /usr/src/app/angular-site/wsu-hw-ng-main

CMD ["ng", "serve", "--host", "0.0.0.0"]
