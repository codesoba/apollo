# Project conventions — YouSchool Design System (Apollo)

## Versioning (semver `a.b.c`)
- `a` = major, `b` = feature, `c` = patch.
- **Do not publish `1.0.0` until the user explicitly says so.** Stay in `0.x` — bump `b` for features, `c` for patches.
- When the changelog gains entries, keep the header version badge and the Overview "Version x.y.z" chip in sync with the newest changelog entry.

## Commits & changelog
- Always use **Conventional Commits** syntax for the commit line of every changelog entry: `type(scope): summary` (e.g. `feat(ds): …`, `fix(toast): …`, `docs(changelog): …`, `refactor(nav): …`).
- **Every time anything is added / modified / patched: add a changelog entry AND bump the version** (feature → `b`, patch → `c`). Keep the header badge + Overview chip in sync.

## Product-surface taxonomy
Every component/section/template is flagged by its final-product destination:
- **BOGY** = the internal CRM
- **Site** = the public marketing site (WordPress + Elementor)
- **Plateforme** = the learning app (student/teacher)
- **Global** = shared base components used across all three

## Brand (per Charte-YouSchool-2024)
- Typeface: **Poppins** (Light/Regular/Medium/SemiBold/Bold).
- Primary: **Bleu YouSchool `#0088FF`**. Brand gradient: `#fbb03b → #ed1e79 → #29abe2 → #19dbad` at 0/-45°.
- Logo: light on `#F5F7FE`, dark on `#1B1F35`, grayscale (black 80%) only as a constrained exception. Slogan: « Une formation pour changer de vie ». Never recolour the symbol/text or change the typeface.
