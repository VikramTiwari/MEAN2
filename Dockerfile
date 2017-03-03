FROM node:7-alpine
MAINTAINER Vikram Tiwari <vikramtheone1@gmail.com>

ENV PORT 3000
ENV NODE_ENV production

# RUN npm install -g yarn

RUN mkdir -p /usr/src/app
WORKDIR /usr/src/app
RUN chown -R node:node /usr/src/app
USER node

COPY ./package.json /usr/src/app/
RUN yarn

COPY . /usr/src/app/

CMD ["yarn", "start"]
EXPOSE 3000
