#!/bin/sh

#create git  repo to this project and push it to gitHub website
repo=$(basename $PWD)
git init; git add .;  git commit -m "first commit"; git remote add origin git@github.com:avgdrs23/"${repo}"
