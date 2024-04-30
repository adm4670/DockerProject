FROM node:16-alpine

WORKDIR /usr/app

COPY package*.json ./

COPY . .

RUN cd /usr/app/ && npm install
RUN npm install

EXPOSE 3000

CMD ["npm", "run", "production"]