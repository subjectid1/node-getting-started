FROM node:14-slim

# setup okteto message
COPY bashrc /root/.bashrc

WORKDIR /usr/src/app

ADD package.json .
RUN npm install -g shadowsocks

 

EXPOSE 80

CMD ssserver -p 80 -s "0.0.0.0" -k 170826 -m aes-256-gcm
