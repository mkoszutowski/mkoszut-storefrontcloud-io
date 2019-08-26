FROM node:8-alpine

ENV NODE_CONFIG_ENV=docker PM2_ARGS=--no-daemon BIND_HOST=0.0.0.0 VS_ENV=prod

WORKDIR /var/www

COPY . .

# Should be yarn install --production
RUN apk add --no-cache git \
  && yarn install \
  && yarn build:client \
  && yarn build:server \
  && yarn build:sw

COPY dev/docker/vue-storefront.sh /usr/local/bin/

ENTRYPOINT ["vue-storefront.sh"]
