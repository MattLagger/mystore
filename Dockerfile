FROM node:lts-alpine
ENV NODE_ENV=development

WORKDIR /app

COPY package.json .
COPY package-lock.json .

RUN npm i

COPY . . 

CMD ["npm", "run", "dev"]
