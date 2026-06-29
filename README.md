# Mission Flowers

A solar canopy shaped like a daisy for the 16th & Mission BART plaza in San
Francisco — solar power, rainwater harvesting, vertical gardens, and underside
murals by local Mission artists. This repo holds the public-facing site.

**Live:** https://missionflowers.netlify.app

## Pages

| URL | File | What it is |
| --- | --- | --- |
| `/` | `public/index.html` | Donation landing page |
| `/deck` | `public/deck.html` | 8-slide concept pitch deck |

Both are bilingual with an **EN / ES toggle** (top-right pill on the deck, in the
nav on the fundraiser). Language preference persists in `localStorage`.

The pages use the `x-dc` deck runtime (`public/vendor/`), which loads React from a
CDN at runtime — so the site is fully static with nothing to compile.

## Develop

```bash
npm install     # one-time
npm run dev      # serves public/ at http://localhost:3000
```

Edit the files in `public/` directly — what you see locally is exactly what ships.

## Project layout

```
public/            # everything that gets served (the whole site)
├── index.html     # fundraiser (homepage)
├── deck.html      # pitch deck
├── img/           # renders and plan images
└── vendor/        # x-dc runtime (support.js, deck-stage.js)
netlify.toml       # publish = "public", no build command
```

## Deploy

Continuous deployment is configured in `netlify.toml` (publish dir `public`, no
build). Once the GitHub repo is linked in Netlify, pushing to `main` deploys to
production and pull requests get preview URLs.

Manual deploy from a local checkout:

```bash
npm run deploy           # production
npm run deploy:preview   # draft preview URL
```
