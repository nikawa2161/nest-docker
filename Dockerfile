FROM node:16-alpine
WORKDIR /api
COPY package*.json ./
RUN npm i -g @nestjs/cli
RUN npm install
COPY . .
CMD ["npm", "run", "start:dev"]