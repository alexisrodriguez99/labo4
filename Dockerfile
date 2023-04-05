FROM node:16.13.1-alpine3.15

RUN npm i -g npm@8.6.0

RUN addgroup allusers && adduser -S -G allusers username
USER username

WORKDIR /application
.
RUN npm i

COPY . .

EXPOSE 3000
CMD ["npm", "start"]

