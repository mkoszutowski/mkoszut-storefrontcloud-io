#!/bin/sh
set -e

if [ "$VS_ENV" = 'dev' ]; then
  yarn dev
else
  yarn build && yarn start
fi
