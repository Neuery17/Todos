ARG NODE_VERSION="18.17.0"

FROM node:${NODE_VERSION}-alpine

WORKDIR /app

COPY package*.json ./

RUN npn install

COPY . .

EXPOSE 4001

CMD ["npm", "run", "dev"]

