#!/bin/sh
# Builds the site and publishes dist/ to the gh-pages branch, which GitHub Pages serves at joincampfire.co.
set -e
cd "$(dirname "$0")"
sh build.sh
touch dist/.nojekyll
REMOTE=$(git remote get-url origin)
cd dist
rm -rf .git
git init -q -b gh-pages
git add -A
git commit -q -m "Deploy $(date -u +%Y-%m-%dT%H:%MZ)"
git push -q -f "$REMOTE" gh-pages
rm -rf .git
echo "deployed to gh-pages"
