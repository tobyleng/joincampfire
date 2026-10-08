#!/bin/sh
# Builds a standalone, deployable copy of the site into dist/ (adds the document skeleton the artifact host normally provides).
cd "$(dirname "$0")"
mkdir -p dist
rm -rf dist/assets && cp -R assets dist/assets
{
  printf '<!doctype html>\n<html lang="en">\n<head>\n<meta charset="utf-8">\n<meta name="viewport" content="width=device-width, initial-scale=1, viewport-fit=cover">\n'
  cat index.html
  printf '\n</html>\n'
} > dist/index.html
echo "joincampfire.co" > dist/CNAME
echo "built dist/"
