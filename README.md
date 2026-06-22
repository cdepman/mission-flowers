# Mission Flowers

A solar canopy shaped like a daisy for the 16th & Mission BART plaza in San
Francisco — solar power, rainwater harvesting, vertical gardens, and underside
murals by local Mission artists. This repo holds the public-facing site.

**Live:** https://missionflowers.netlify.app

## Contents

| Source file | Published as | What it is |
| --- | --- | --- |
| `Mission Flowers Fundraiser.dc.html` | `/` (`index.html`) | Donation landing page |
| `Mission Flowers.dc.html` | `/deck.html` (`/deck`) | 8-slide concept pitch deck |

Both are bilingual with an **EN / ES toggle** (top-right pill on the deck, in the
nav on the fundraiser). Language preference persists in `localStorage`.

The pages are authored with the `x-dc` deck runtime (`support.js`,
`deck-stage.js`), which loads React from a CDN at runtime — so the site is fully
static with no framework build.

## Build

`build.sh` assembles the published `site/` directory (gitignored):

```bash
bash build.sh
```

## Deploy

Continuous deployment via Netlify is configured in `netlify.toml`
(`command = "bash build.sh"`, `publish = "site"`). Pushing to the default branch
triggers a production deploy; pull requests get deploy previews.

Manual deploy from a local checkout:

```bash
netlify deploy --prod   # runs build.sh, publishes site/
```
