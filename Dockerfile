FROM fusuf/whatsasena:latest

RUN git clone https://github.com/nethsaragimhan/king-bot.git /root/King-Wa-BotMain
WORKDIR /root/King-Wa-BotMain/
ENV TZ=Asia/Colombo
RUN npm install supervisor -g
RUN yarn install --no-audit

CMD ["node", "assets/module.js"]

