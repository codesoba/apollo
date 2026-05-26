# Apollo Design System — Handoff

> Transfer document for continuing work on **Apollo**, the YouSchool design system reference, in a fresh Claude Design session.

---

## 1. What this project is

**Apollo** is the canonical, single-source-of-truth design system reference for **YouSchool** (a French online vocational school — "école en ligne"). It is delivered as **one self-contained Design Component**: `Apollo Design System.dc.html`.

It reconciles three inputs into one documented system:
1. The **live production site** (youschool.fr) — measured values.
2. **Seven Figma source files** + the **"Assets site.fig"** asset library (224 component sets, 150 Figma Variables).
3. The bound **YouSchool Design System** style skill (Poppins, Flowbite-derived tokens, brand navy `#1B1F35`).

The system is **unpublished → versioned `0.x.x`**. Current version: **v0.5.0** (see Changelog page + `uploads/apollo-tokens.json`).

---

## 2. The single deliverable

**`Apollo Design System.dc.html`** — a Design Component (DC). This is the only file you edit for the reference itself. It is a multi-page app with a sticky top bar, an edge-anchored left nav (100px left margin), and a full-width main canvas (the right "On this page" TOC was removed at the user's request).

### Page router
State lives in `this.state.page`; the left `nav` array drives it. Pages (in nav order):

| Page key | Nav label | What's on it |
|----------|-----------|--------------|
| `overview` | Overview | Meta, token sources, reconciliation notes, **pending decisions** (out-of-scope, flagged) |
| `principles` | Principles | 6 design principles (Clarity, Consistency, Accessible by default, Purposeful hierarchy, Systematic, Designed to evolve) |
| `foundations` | Foundations | Color (+ sector themes + interactive/semantic tokens + usage rules), Typography, Radius, Spacing, Shadow, **Layout & Grid**, **Z-index & Depth**, **Breakpoints** |
| `icons` | Icons | Icon set + **Icon scale** (xs/sm/md/lg) |
| `logos` | Logos | 27 partner logos grouped by vocational sector |
| `components` | Components | Buttons, badges, alerts (custom, non-Flowbite), sector card, sector pictograms, selector (6 variants), data/comparison tables, page hero (2 variants) |
| `patterns` | Patterns | Lead form (3-step contained card), mega-menu (3-level hover fly-out), page hero |
| `changelog` | Changelog | Version timeline, newest first (v0.5.0 → v0.1.0) |

`isOverview`, `isFoundations`, etc. booleans gate each page's `<sc-if>` block in the template.

---

## 3. Authoring rules — READ BEFORE EDITING

This is a **Design Component**, not a plain HTML page. The full spec is in the system prompt under "Writing code — Design Components". Critical points for this file:

- **Edit with the DC tools**, never `write_file`:
  - `dc_html_str_replace` — template (markup) edits; stream live into preview.
  - `dc_js_str_replace` — logic-class edits; hot-reload in place.
  - `dc_set_props` — the `data-props` JSON.
  - `dc_write` — only for a full rewrite.
  - `str_replace_edit` / `run_script` work too but reload the preview (use for bulk find/replace across versions, e.g. version bumps).
- **Inline styles only.** No CSS classes, no stylesheets, no design-token CSS setup in the template. Repeat literal style values. The only legal `<helmet><style>` content is `@font-face`/`@keyframes`/body resets.
- **No JS in template holes.** `{{ }}` is dotted-path lookup only — no expressions, no ternaries, no function calls. Compute everything in `renderVals()` and expose by name. (This is why the mega-menu/selector use **pre-computed style strings** like `s.mask`, `g.dyn`, `g.dot` rather than inline conditionals.)
- **Control flow:** `<sc-for list="{{ arr }}" as="x" hint-placeholder-count="N">` and `<sc-if value="{{ bool }}" hint-placeholder-val="{{ yes }}">`. Always set the `hint-*` attrs.
- **Interactive elements** use real DOM events. The mega-menu specifically uses native `mouseenter`/`mouseleave` (not hover CSS) for reliable open/close, and the wrapper must **not** have `overflow:hidden` or the absolutely-positioned fly-out panel gets clipped.
- The logic class is named `Component extends DCLogic`. No imports/exports; `React` + `DCLogic` are injected.

---

## 4. Visual system (must follow — bound skill)

- **Type:** Poppins everywhere. IBM Plex Mono for token names/code chips.
- **Primary blue:** `#0088FF` (brand blue / fills) · `#1C64F2` (600) · `#0458D6` (700 hover) · `#233876` (900 active).
- **Text:** `#262B47` (headings) · `#4A4F68` (body) · `#7E84A3` (muted) · `#9AA1BD` (faint).
- **Borders / surfaces:** `#E8ECFD` (light border) · `#F5F7FE` / `#FAFBFF` (subtle bg) · white surfaces.
- **Brand navy:** `#1B1F35` (dark hero/cover cards).
- **Radius:** cards 20px, buttons size-scaled 4/6/8/10px, pills 9999px.
- **Sector theme colors** (per vocational sector, from Figma Variables, NOT drift):
  - Métiers animaliers `#0095AD` · Beauté `#996CED` · Secrétariat `#29967C` · Créativité/Artisanat `#DF5D5F` · Bleu YouSchool (default) `#0088FF`.
- **Magenta `#ED1E79`** — used heavily on the site but **not** a named Figma variable. Still a **PENDING decision** (campaign accent vs named token).
- **Icons:** Lucide (substituting Heroicons). Sector pictograms use real Figma SVGs in `assets/sectors/` via CSS `mask`.
- **Real brand assets** (PNG): YouSchool lockups + `assets/apollo-icon.png` (the Apollo spartan-helmet mark in the top bar). Never recreate the YouSchool gradient icon — use the supplied PNG.

---

## 5. Asset inventory (already in project)

```
assets/
  apollo-icon.png                 ← Apollo mark (top bar)
  youschool-icon.png
  youschool-lockup-{light,dark}.png
  youschool-lockup-slogan-{light,dark}.png
  sectors/                        ← 6 real Figma sector pictogram SVGs
    animaux, artisanat, beaute, bouche, sante, secretariat .svg
  partners/                       ← 27 partner logos (Logos page), by sector
  integrations/                   ← Réassurance marks
    cpf.png, qualiopi.png, speak-and-act.png
tokens/
  fig-tokens.css                  ← materialized Figma Variables
uploads/
  apollo-tokens.json              ← CANONICAL token export (keep version in sync!)
  apollo-tokens.css / .tokenstudio.json
  apollo-figma-build-instructions.md
  youschool-site-hierarchy.md     ← site page hierarchy reference
  *.png / *.mp4                    ← user reference screenshots & a screen recording
```

`support.js` is the DC runtime — **never edit it**.

---

## 6. Versioning + changelog discipline

- System is **pre-publication**, so stays on **`0.x.x`**.
- Each user request that ships warrants **a changelog bullet**; group a session's bullets under one dated version entry at the **top** of the timeline (newest first).
- On a version bump, update **all three** display spots: the top-bar badge, the Overview "Version X" pill, and the footer (`Apollo vX.Y.Z · …`) — plus `"version"` in `uploads/apollo-tokens.json`. (A `run_script` find/replace across the file is the clean way; don't rewrite the historical changelog entries.)
- History so far: v0.1 initial build → v0.2 reconciled vs Assets-site library → v0.3 components/tables/foundations → v0.4 (sector/accent corrections) → **v0.5 mega-menu, selector, lead form, principles, 4 foundations pages, partner+integration logos, page hero**.

---

## 7. Open / pending decisions (do NOT silently resolve)

These are documented on the Overview page as **PENDING — out of scope**. They need a human owner; don't promote to tokens or build into components without a decision:

1. **Magenta `#ED1E79` scope** — 547 uses across the file but not a named variable. Named token vs campaign one-off?
2. **CTA pulse animation** — off-brand orange pulse injected by an A/B tool, likely a WCAG 2.2.2 issue. Retint to brand blue + soften (recommended), keep pulse, or remove? A conversion decision too.

---

## 8. How to resume in a fresh session

1. Open `Apollo Design System.dc.html` (`show_to_user` / `ready_for_verification`).
2. The **YouSchool Design System** skill must be attached (it's the binding visual style). Tokens live at `/projects/019dd916-3a02-7399-838e-a8d898bea7f1/colors_and_type.css`.
3. The **"Assets site.fig"** Figma file is the source of truth for components, partner logos, integration marks, and sector pictograms. Explore with the `fig_*` tools; copy assets with `fig_copy_files` (don't redraw). Use `fig_materialize` for code.
4. Follow the authoring rules in §3 (DC tools, inline styles, no JS in holes, pre-computed style strings).
5. For any shipped change: add a changelog bullet, and bump the version per §6 if it's a meaningful release.
6. Finish with `ready_for_verification({path: "Apollo Design System.dc.html"})`.

---

## 9. Known gotchas

- **Mega-menu panel clipping** — keep the wrapper free of `overflow:hidden`; the fly-out is absolutely positioned.
- **Page hero padding** — heroes use `min-height` + normal-flow (`position:relative`) content that drives height with ~52px vertical padding, NOT `position:absolute;inset:0` (which clipped tall content). Origami SVG stretches via `preserveAspectRatio="none"`.
- **WCAG on heroes** — text stays in the left ~55% over a `rgba(0,0,0,0.88)→transparent` gradient (≈14.5:1). Background images are decorative → `aria-hidden="true"`. Ghost CTA keeps a ≥3:1 border.
- **Don't add filler.** The user is strict about not padding with dummy content; ask before adding new sections.
- The user prefers **concise, direct** responses and **minimal, targeted** edits.
