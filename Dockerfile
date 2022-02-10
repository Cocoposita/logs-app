FROM node 
# с какого image хотим сделать свой

WORKDIR /app 
# контекст проекта

COPY package.json /app

RUN npm install 
# запускаем команду когда собирается образ

COPY . . 
# копируем из локального проекта

ENV PORT 3000

EXPOSE $PORT 
# какой порт запускается

VOLUME ["/app/data"]

CMD ["node", "app.js"] 
# запускаем команду, когда запускается образ