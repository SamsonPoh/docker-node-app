FROM node:21.6.0-alpine
WORKDIR /app

COPY . /app
# copy explcity (single line) better than . /app
#COPY index.js package-lock.json package.json /app

RUN npm install
EXPOSE 8080

CMD ["node", "index.js"]