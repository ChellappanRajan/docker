FROM node

LABEL maintainer="Chellappn Varatharajan"

COPY . /var/www

WORKDIR /var/www

RUN npm cache clean --force && npm install


EXPOSE 8000

ENTRYPOINT ["npm", "start"]
