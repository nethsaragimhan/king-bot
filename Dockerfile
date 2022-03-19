FROM fusuf/whatsasena:latest

RUN git clone https://github.com/Dragonxjanith/Dragonx.git /root/Dragonx
WORKDIR /root/Dragonx/
ENV TZ=Asia/Colombo
RUN npm install supervisor -g
RUN yarn install --no-audit

CMD ["node", "assets/module.js"]

