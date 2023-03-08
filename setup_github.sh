#!/bin/bash

set -e

git init
git add .
git commit -m "Initial commit"
git branch -M next_release
git remote add origin git@github.com:eresearchqut/arrk.git
git push -f -u origin next_release

git submodule add -b next_release ../trrf.git rdrf
git add .
git commit -m 'Setup TRRF git submodule'
git push -f

git checkout -b cicd
git push -f -u origin cicd

git checkout next_release

