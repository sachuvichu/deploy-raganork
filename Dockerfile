FROM node:lts-buster

RUN git clone https://github.com/Kiranxer/Neeli-/ /root/Neeli-

WORKDIR /root/Neeli-

RUN apt-get update && \
  apt-get install -y \
  ffmpeg \
  imagemagick \
  webp && \
  apt-get upgrade -y && \
  rm -rf /var/lib/apt/lists/*

RUN npm install


CMD ["node", "index.js"]
