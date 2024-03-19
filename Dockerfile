# menggunakan image node:lts-alpine3.19 dari dockerHub
FROM node:lts-alpine3.19
# membuat direktori untuk project
WORKDIR /app
# copy package.json dan package-lock.json
COPY package*.json ./
# menginstall dependecnies
RUN npm install --production --unsafe-perm
# copy semua file ke direktori kerja
COPY . .
# mengekspos port 3001
EXPOSE 3001
# menjalankan npm start
CMD ["npm", "start"]    
