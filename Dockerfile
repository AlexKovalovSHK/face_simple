FROM node:23-alpine3.20

WORKDIR /app

COPY package.json .

RUN npm install

COPY . .
#RUN npm update
RUN npm run build

EXPOSE 3003

CMD ["serve", "-s", "dist", "-l", "3003"]
