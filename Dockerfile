FROM node:14.12.0

RUN mkdir -p /usr/src/test
WORKDIR /usr/src/test

COPY package.json /usr/src/test


COPY package-lock.json /usr/src/test
RUN pwd
RUN npm install




COPY . /usr/src/test




EXPOSE 8000

CMD [ "node","index.js" ]