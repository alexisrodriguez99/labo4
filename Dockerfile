FROM node:16.13.1-alpine3.15
RUN addgroup allusers && adduser -S -G allusers username
USER username
RUN mkdir -p /app2 && chown -R username:allusers /app2
WORKDIR /app2
COPY . .
EXPOSE 3000
CMD ["npm", "start"]
