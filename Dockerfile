FROM node:18-bullseye

WORKDIR /usr/src/app


COPY ./angular-site ./angular-site

RUN npm install -g @angular/cli

WORKDIR /usr/src/app/angular-site/wsu-hw-ng-main

EXPOSE 4200

CMD ["ng", "serve", "--host", "0.0.0.0"]
