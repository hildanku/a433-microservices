FROM node:lts-alpine3.19
WORKDIR /app
COPY package*.json ./
RUN npm install --production --unsafe-perm
COPY . .
# RUN npm run buildss
EXPOSE 3000
CMD ["npm", "start"]    