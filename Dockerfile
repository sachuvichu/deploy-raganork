FROM quay.io/souravkl11/rgnk-v3:latest

RUN git clone https://github.com/sachuvichu/raganork /railway/Raganork
WORKDIR /railway/Raganork
RUN yarn install --network-concurrency 1
CMD ["node", "index.js"]
