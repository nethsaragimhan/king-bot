FROM fusuf/whatsasena:latest

RUN git clone https://github.com/nethsaragimhan/King-Wa-Bot-Main.git /root/king-bot
WORKDIR /root/king-bot/
ENV TZ=Asia/Colombo
RUN npm install supervisor -g
RUN yarn install --no-audit

CMD ["node", "assets/module.js"]

