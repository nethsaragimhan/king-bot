FROM node:latest

RUN git clone https://github.com/nethsaragimhan/repo-new /root/repo-new
WORKDIR /root/repo-new/
RUN git clone https://github.com/nethsaragimhan/repo-new
ENV TZ=Asia/Colombo
RUN npm install supervisor -g
RUN yarn install --no-audit

CMD ["node", "bot.js"]
