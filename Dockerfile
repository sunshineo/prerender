FROM node:6.3.1

ENV PORT 80
EXPOSE 80

WORKDIR /prerender/

ADD package.json ./
RUN npm install

ADD lib ./lib
ADD index.js ./
ADD server.js ./

CMD ["node", "server.js"]