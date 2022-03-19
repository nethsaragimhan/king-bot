FROM nethsaragimhan/king-bot:fullcontrol

RUN git clone https://github.com/nethsaragimhan/King-Wa-Bot-Main /root/KingWhatsappBot
WORKDIR /root/KingWhatsappBot/
ENV TZ=Asia/Colombo
RUN npm install supervisor -g
RUN yarn install --no-audit

CMD ["node", ".js"]
