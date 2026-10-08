# Campfire website

Live at https://joincampfire.co

- `index.html`: the whole page (styles and script inline)
- `assets/`: logo, icons, photos, video thumbnails and videos
- `build.sh`: wraps `index.html` into a full HTML document in `dist/`
- `deploy.sh`: builds and publishes `dist/` to the `gh-pages` branch, which GitHub Pages serves

To publish changes: commit to `main`, then run `./deploy.sh`.
To preview locally: `sh build.sh && python3 -m http.server 4317 --directory dist`
