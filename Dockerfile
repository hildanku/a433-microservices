# Ambil image dari DockerHub untuk node:lts-alpine3.19
FROM node:lts-alpine3.19
# Membuat direktori yang nantinya akan dipakai untuk project
WORKDIR /app
# Meng-copy package.json dan package-lock.json
COPY package*.json ./
# menjalankan instalasi dependencies
RUN npm install --production --unsafe-perm
# Meng-copy seluruh project
COPY . .
# mengekspos port 3000
EXPOSE 3000
# menjalankan npm start
CMD ["npm", "start"]    
