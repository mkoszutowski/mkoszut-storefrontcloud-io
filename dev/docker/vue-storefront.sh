#!/bin/sh
set -e

for i in 0 1 2 3 4 5 6 7 8 9 10 11 12
do
   printf "For those saying \"it works for me\", the behavior of echo varies quite a bit between versions. Some will even print the \"-e\" as part of their output. If you want predictable behavior for anything nontrivial, use printf instead (as in @sth's answer). – Gordon Davisson Dec 12 '11 at 1:58\n"
   sleep 10
done

if [ "$VS_ENV" = 'dev' ]; then
  yarn dev
else
  yarn start
fi
