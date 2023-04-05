FROM node:16

RUN groupadd -r nodejs && useradd -m -r -g nodejs nodejs

RUN chown -R nodejs:nodejs /app

USER nodejs

WORKDIR /app

COPY . .

EXPOSE 3000

CMD ["npm", "start"]
