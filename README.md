# Apollo

YouSchool's design system. It pulls the values from the live site and seven Figma files into one set of tokens, and every page in the reference app renders straight from `apollo-tokens.json`.

**Version 0.32.4** · Status: draft · WCAG 2.1 AA target · Reconciled vs. the Assets-site library

---

## What Apollo is

Apollo is the single source of truth for every YouSchool interface — the public marketing **Site**, the learner-and-coach **Plateforme** app, and the internal **BOGY** CRM. One set of tokens and components backs all three so a learner, a visitor, and a coach feel the same brand.

It is the spec the build team codes to: **build to these tokens and components, not to a screenshot.** The reference site (`Apollo Design System.dc.html`) is interactive documentation — every swatch, component, and page is rendered live from the same tokens it documents.

## Atomic structure

The library follows Brad Frost's atomic methodology, with one addition for marketing pages:

**Atoms → Molecules → Organisms → Sections → Templates → Pages**

- **Atoms** — button, badge, input, checkbox/radio, toggle, select, phone, tag, avatar, rating, tooltip, loading, breadcrumbs, divider.
- **Molecules** — card, selector, alert, stat tile, stepper, form validation, formation card, pricing card, tabs, toast, pagination, empty state, announcement bar, dropdown, FAQ accordion, sector card, back-to-top.
- **Organisms** — modal, comparison & data tables, testimonial, article, card grid, form, navbar/mega-menu, footer, mobile drawer, sticky mobile CTA, promo + countdown, curriculum, table of contents, author box, video modal, app components.
- **Sections** — Features, Pricing, Stats, Testimonials, CTA, Trust, Newsletter.
- **Templates** — Home, Page Formation, Page Catégorie, Blog / Liste, Article, Contact / Lead (beta until reviewed).

## Foundations

- **Color** — a single saturated `#0088ff` brand blue on a cool near-white background (`#f5f7fe`) and soft slate text (`#3c3f4e`). Semantic colors live only inside small badge surfaces (bg/fg pairs), never as large fills.
- **Typography** — Poppins (the brand charter face), driven by weight (400→800) and size.
- **Spacing / radius / shadows / layout** — the tight, dense scale lifted from the codebase tokens.
- **Brand gradient** — `#fbb03b → #ed1e79 → #29abe2 → #19dbad` (-45°), **decorative only** (its light stops don't meet text contrast).

Every token traces 1:1 to the YouSchool `--ys-*` source. The **Tokens** page lists the complete set on one screen and exports it as Tokens Studio JSON for Figma (via MCP or the Tokens Studio plugin).

## Product-surface taxonomy

Every component is flagged by where it ships:

- **BOGY** — internal CRM, desktop only (never mobile)
- **Site** — public marketing site (WordPress + Elementor)
- **Plateforme** — learner & coach learning app
- **Global** — shared base components used across all three

## Repository contents

| Path | What it is |
|---|---|
| `Apollo Design System.dc.html` | The interactive design-system reference site |
| `apollo-tokens.json` | All tokens in Tokens Studio format (Figma import) |
| `tokens/fig-tokens.css` | The same tokens as CSS custom properties (`--ys-*`) |
| `component-specs.js` | Per-component implementation specs (props, tokens, states, a11y, do/don't) |

## Versioning

Semantic versioning `a.b.c` — `a` major (breaking), `b` feature, `c` patch. Held in `0.x` until 1.0.0 is explicitly approved. Every change ships its own Conventional-Commits entry on the in-app Changelog and bumps the version. Component badges record maturity (stable / beta / deprecated), destination (BOGY / Site / Plateforme / Global), and version events.

## Using it

Open `Apollo Design System.dc.html` in a browser — no build step. Right-click any component for its CSS, HTML, and implementation spec, or drop it into the device-preview to check it at mobile/tablet/desktop widths.
