# Apollo — Figma design system build instructions

Target: build the YouSchool "Apollo" design system as a new Figma file, using
the figma-desktop MCP. Source of truth for all values: `apollo-tokens.json`
(canonical), `apollo-tokens.tokenstudio.json` (Figma-ready import).

Read both files fully before starting. Do not invent or approximate any
value — every color, size, radius, and shadow must trace back to one of
these two files. If something is needed that isn't in the tokens (e.g. an
icon set, a missing component spec), stop and flag it rather than guessing.

Two known gaps in the token set are intentionally OUT OF SCOPE for this
build: `color.accent_unconfirmed.*` (teal/magenta) and `shadow.special.cta-pulse`.
Do not create styles, variables, or components for either. If a component
would naturally need one of these (e.g. a "funnel-specific" badge), skip
that variant and leave a comment on the frame noting it's pending.

Work in the phases below, in order. Do not skip ahead to components before
Phase 1 is complete and confirmed — every later phase depends on Phase 1's
variables existing and being correctly bound.

---

## Phase 0 — Setup

1. Create a new Figma file named `Apollo — YouSchool Design System`.
2. Create these pages, in this order:
   - `Cover`
   - `Foundations`
   - `Components`
   - `Patterns`
   - `Changelog`
3. On `Cover`, add a simple frame with the file name, version "1.0.0", and
   today's date. No need to make this elaborate — one frame, title, subtitle.

## Phase 1 — Foundations (tokens as Figma variables + styles)

Work on the `Foundations` page. Create one section/frame per token category
below. Each token becomes a Figma variable (for color, spacing, radius) bound
to a visible swatch, and a Figma text/effect style where applicable (typography,
shadows). Name variables and styles exactly matching the JSON key paths using
slash notation, e.g. `color/primary/500`, `radius/button`, `shadow/md`.

**1a. Color**
For every entry under `color.primary`, `color.secondary`, `color.neutral`,
`color.success`, `color.warning`, `color.danger` in apollo-tokens.json:
- Create a Figma color variable named `color/{group}/{key}`.
- Place a labeled swatch (rect + hex value + variable name as text) on the
  Foundations page, grouped by color family, in ascending order (50 → 900
  or 50 → 600 depending on the family).
- Apply the relevant `usage_rules` entry as a text annotation directly under
  swatches for `primary.500`, `primary.text-a11y`, and `neutral.400` — these
  three have real usage restrictions and need to be visible at a glance, not
  buried in a separate doc.

**1b. Typography**
For every entry under `typography.headings` (h1–h6):
- Create a Figma text style named `text/{key}` (e.g. `text/h1`) using
  Poppins, the specified size and weight, line-height 100%.
- Render a live specimen of each style next to its label.
- Add a separate row of specimens for the raw `fontSize` scale (xs–4xl) at
  weight 400, since these are used outside headings too (labels, body text).
- Add a visible note on this section: "Marketing site headings currently
  ship larger/bolder (H1 45px/700) than this scale — two contexts pending
  reconciliation. This scale is canonical for Apollo until that's resolved."

**1c. Radius**
Create Figma variables `radius/button` (10), `radius/card` (20),
`radius/badge` (7), `radius/pill` (9999). Show each as a labeled rounded
rect at a consistent size so the radius difference is visually comparable.

**1d. Spacing**
Create Figma variables `space/1` through `space/6` (7, 14, 16, 21, 30, 37).
Show each as a labeled horizontal bar whose width equals the spacing value,
stacked so the scale is visually scannable.

**1e. Shadow**
Create Figma effect styles `shadow/xs` through `shadow/xl` and
`shadow/focus-ring`, matching the rgba values exactly. Show each as a
labeled white card on a light gray backdrop so the elevation is visible.
Do not create a style for `shadow.special.cta-pulse` — out of scope.

When Phase 1 is done, stop and summarize what was created (counts per
category) before moving to Phase 2.

## Phase 2 — Components

Work on the `Components` page. Every component must be built using ONLY the
variables and styles created in Phase 1 — no hardcoded hex values, no
hardcoded px values for color/radius/spacing/shadow. This is the single most
important rule in this whole build: if a component doesn't reference a
Phase 1 variable, it isn't done correctly.

Build these components, each as a proper Figma component (not just a static
frame) with variants where noted:

- **Button** — variants: primary / success / warning, × small / default /
  large, × default / hover / disabled states. Use `radius/button`,
  `text/{appropriate size}`, color variables for fill/text per variant.
- **Badge** — variants: primary / success / warning / slate (neutral). Use
  `radius/badge`.
- **Input** — text input, default / focus / error / disabled states. No
  existing spec in source files (Plateforme UI Kit had this as a placeholder
  only) — use `radius/button` for consistency with buttons, `shadow/focus-ring`
  on focus, `color.danger.500` border on error. Flag this component clearly
  as "new, no prior spec" in a comment, since you're filling a real gap, not
  reproducing something that existed.
- **Card** — base card using `radius/card` and `shadow/md`, since cards
  exist widely on the live site but had no Figma component before this.
- **Modal** — basic structure (overlay + panel + close), `radius/card`,
  `shadow/xl`. Same flag as Input: no prior spec, this is new.
- **Dropdown** — basic structure (trigger + flyout panel), `radius/button`,
  `shadow/md`. Same flag: no prior spec.

For each component, include all variant combinations as a single Figma
component set with properties, not as separate disconnected components.

Stop after this phase and summarize what was built before moving to Phase 3.

## Phase 3 — Patterns (layout)

Work on the `Patterns` page. These are compositions of Phase 2 components,
not new atomic pieces. Build:

- A **page header pattern** (title + breadcrumb + action button) using the
  Button component and `text/h1`.
- A **card grid pattern** (3-column grid of the Card component) using
  `space/4` as the gap value, matching the 40px grid gap observed on the
  live site if `space/4` (21px) doesn't match — flag this discrepancy rather
  than silently picking one. The live site's actual measured gap was 40px,
  which isn't a clean multiple of the 7px spacing unit; note this conflict
  explicitly as a new pending decision rather than resolving it yourself.
- A **form pattern** using the Input component, labeled fields, and a
  primary Button as submit.

This phase will surface gaps — that's expected and fine. Document them on
the frame rather than inventing a resolution.

## Phase 4 — Changelog

On the `Changelog` page, write a dated entry documenting:
- What was built in this session (counts: variables, styles, components,
  patterns).
- The two items deliberately skipped (accent colors, CTA pulse) and why.
- Any new gaps discovered during Phase 3 (e.g. the spacing/grid-gap
  mismatch) that need a human decision before the next session.

---

## Throughout — non-negotiable rules

- Every color, radius, spacing, and shadow value used anywhere in this file
  must be bound to a Phase 1 variable or style. No exceptions, no
  hardcoded values "just to move faster."
- Do not touch or reference `color.accent_unconfirmed` or
  `shadow.special.cta-pulse` anywhere in this build.
- Do not invent component specs silently. If something is genuinely
  undefined in the source tokens (inputs, modal, dropdown), build a
  reasonable version using existing tokens, but flag it explicitly as new
  rather than presenting it as if it reproduces an existing design.
- If at any point a token value is ambiguous or conflicts with something
  observed on the live site, stop and report the conflict rather than
  picking a side.
- Work phase by phase. Report back after each phase rather than running all
  four silently and dumping everything at the end — this build is too large
  to review as one block.
