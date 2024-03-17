FROM node:14-alpine
WORKDIR /app
COPY package*.json ./
RUN npm install --production --unsafe-perm
COPY . .
# RUN npm run buildss
EXPOSE 3001
CMD ["npm", "start"]    
