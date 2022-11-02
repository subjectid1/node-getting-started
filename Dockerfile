FROM node:14-slim

# setup okteto message
COPY bashrc /root/.bashrc

WORKDIR /usr/src/app

ADD package.json .
RUN npm install -g shadowsocks

COPY index.js .

EXPOSE 80

CMD npm start
