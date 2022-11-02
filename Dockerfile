FROM node:14-slim

# setup okteto message
COPY bashrc /root/.bashrc

WORKDIR /usr/src/app

ADD package.json .
RUN npm install -g shadowsocks

 

EXPOSE 80

CMD ssserver -p 80 -s "hello-world-subjectid1.cloud.okteto.net" -k 170826 -m rc4 
