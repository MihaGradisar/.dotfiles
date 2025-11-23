#!/usr/bin/env bash

current_datetime=$(date +"%Y-%m-%d %H:%M:%S")

git add .
git commit -m "vault backup: $current_datetime"
git push --force origin main
