#!/usr/bin/env sh
set -e
yarn run build
cd dist
git init
git add -A
git commit -m 'deploy'
git branch -M main
git push -f git@github.com:Shirley299/Project1.git main:gh-pages
cd -
