FROM node:12-alpine
#RUN apk add --no-cache python g++ make
WORKDIR /app
COPY . .
#RUN yarn install --production
#CMD ["", "src/index.js"]

RUN npm install http-server
CMD ["node", "./node_modules/http-server/bin/http-server", "-p", "80"]


# alpine とは軽量なLinux。apkは、alpineのパッケージ管理。
# yarn とはjsのパッケージ管理。
# 例 CMD [ "/bin/ping", "-c", "3", "8.8.8.8" ]
# COPY path1 path2 ... path1は、Dockerfileが存在するパスからの相対パスです。path2は、コンテナ上での絶対パスまたは相対パスになります。
