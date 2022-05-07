FROM node:latest

RUN git clone https://github.com/nethsaragimhan/king-bot-plugin /root/king-bot-plugin
WORKDIR /root/king-bot-plugin/
RUN git clone https://github.com/nethsaragimhan/king-bot-plugin
ENV TZ=Asia/Colombo
RUN npm install supervisor -g
RUN yarn install --no-audit

CMD ["node", "bot.js"]
