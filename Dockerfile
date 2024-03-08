# mengambil image dari DockerHub
FROM node:14

# menetapkan nantinya project ini akan bekerja di directory mana
WORKDIR /app

# meng-copy semua file dan folder yang ada pada lokasi kita saat ini dengan destinasi lokasi kita saat ini juga
COPY . .

# konfigurasi ENV
ENV NODE_ENV=production DB_HOST=item-db

# sepemahaman saya RUN disini berjalan 1x, ketika kita membuild image yang kita sedang build
# perintah dibawah melakukan instalasi node modules
RUN npm install --production --unsafe-perm && npm run build

# menetapkan nanti aplikasi berjalan pada port 80
EXPOSE 8080

# CMD dieksekusi ketika kita membuat container dengan image yang kita sedang build saat ini
# ketika kita menggunakan image yang kita build sekarang untuk membuat
# sebuah container maka hal yang akan dieksekusi adalah npm start
CMD ["npm","start"]
