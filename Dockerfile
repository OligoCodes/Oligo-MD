FROM node:lts-buster
RUhttps://i.postimg.cc/765nFVKh/file-0000000072a861f89e02c20d4c7fa759.pngN git clone https://github.com/OligoCodes/Oligo-MD/root/ikmalvin
WORKDIR /root/ikmalvin 
RUN npm install && npm install -g pm2 || yarn install --network-concurrency 1
COPY . .
EXPOSE 9090
CMD ["npm", "start"]
