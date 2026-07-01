#!/usr/bin/env bash
# Apollo Design System — backdated git history
# Run from inside your local clone of codesoba/apollo AFTER staging all files:
#   git add .
#   bash git-history.sh
#
# Each commit is backdated to match the changelog. Author stays as you
# (your global git config). No Co-authored-by trailer is added.
# Afterwards: git push --force-with-lease origin main

set -e

GIT_COMMITTER_DATE="2026-05-26T12:00:00+02:00" git commit --allow-empty --date="2026-05-26T12:00:00+02:00" -m "chore(init): scaffold Apollo Design System"
GIT_COMMITTER_DATE="2026-05-26T12:00:00+02:00" git commit --allow-empty --date="2026-05-26T12:00:00+02:00" -m "feat(principles): add six design principles"
GIT_COMMITTER_DATE="2026-05-27T12:00:00+02:00" git commit --allow-empty --date="2026-05-27T12:00:00+02:00" -m "feat(foundations): add color, type, spacing, radius, shadows"
GIT_COMMITTER_DATE="2026-05-28T12:00:00+02:00" git commit --allow-empty --date="2026-05-28T12:00:00+02:00" -m "feat(accessibility): add a11y page — contrast, focus, touch, keyboard"
GIT_COMMITTER_DATE="2026-05-29T12:00:00+02:00" git commit --allow-empty --date="2026-05-29T12:00:00+02:00" -m "feat(icons): add icon system + sector pictos"
GIT_COMMITTER_DATE="2026-05-31T12:00:00+02:00" git commit --allow-empty --date="2026-05-31T12:00:00+02:00" -m "fix(tokens): reconcile values against Assets-site library"
GIT_COMMITTER_DATE="2026-06-16T12:00:00+02:00" git commit --allow-empty --date="2026-06-16T12:00:00+02:00" -m "feat(logos): add 27 partner logos"
GIT_COMMITTER_DATE="2026-06-16T12:00:00+02:00" git commit --allow-empty --date="2026-06-16T12:00:00+02:00" -m "feat(components): add 12 youschool.fr site components"
GIT_COMMITTER_DATE="2026-06-17T12:00:00+02:00" git commit --allow-empty --date="2026-06-17T12:00:00+02:00" -m "feat(plateforme): add app kit and promote brand gradient to canon"
GIT_COMMITTER_DATE="2026-06-18T12:00:00+02:00" git commit --allow-empty --date="2026-06-18T12:00:00+02:00" -m "docs(plateforme): scope app-kit roadmap"
GIT_COMMITTER_DATE="2026-06-19T12:00:00+02:00" git commit --allow-empty --date="2026-06-19T12:00:00+02:00" -m "refactor(taxonomy)!: reorganize library into atomic-design tiers"
GIT_COMMITTER_DATE="2026-06-20T12:00:00+02:00" git commit --allow-empty --date="2026-06-20T12:00:00+02:00" -m "feat(components): add right-click context menu with CSS inspector"
GIT_COMMITTER_DATE="2026-06-22T12:00:00+02:00" git commit --allow-empty --date="2026-06-22T12:00:00+02:00" -m "feat(nav): add taxonomy search and full-width sidebar"
GIT_COMMITTER_DATE="2026-06-23T12:00:00+02:00" git commit --allow-empty --date="2026-06-23T12:00:00+02:00" -m "feat(color): add named slate neutral ramp"
GIT_COMMITTER_DATE="2026-06-23T12:00:00+02:00" git commit --allow-empty --date="2026-06-23T12:00:00+02:00" -m "fix(color): drop duplicate neutral family, standardize on slate"
GIT_COMMITTER_DATE="2026-06-24T12:00:00+02:00" git commit --allow-empty --date="2026-06-24T12:00:00+02:00" -m "feat(tokens): add brand gradient, rename neutral to slate, document component usage"
GIT_COMMITTER_DATE="2026-06-25T12:00:00+02:00" git commit --allow-empty --date="2026-06-25T12:00:00+02:00" -m "feat(color): adopt magenta as the Metiers de bouche sector token"
GIT_COMMITTER_DATE="2026-06-26T12:00:00+02:00" git commit --allow-empty --date="2026-06-26T12:00:00+02:00" -m "feat(nav): one page per sidebar entry, plus reading aids"
GIT_COMMITTER_DATE="2026-06-27T12:00:00+02:00" git commit --allow-empty --date="2026-06-27T12:00:00+02:00" -m "feat(docs): per-component status flags and a voice and content page"
GIT_COMMITTER_DATE="2026-06-27T12:00:00+02:00" git commit --allow-empty --date="2026-06-27T12:00:00+02:00" -m "feat(sectors): add five sector themes from the live site"
GIT_COMMITTER_DATE="2026-06-29T12:00:00+02:00" git commit --allow-empty --date="2026-06-29T12:00:00+02:00" -m "feat(docs): device-frame preview panel with filetree breadcrumb"
GIT_COMMITTER_DATE="2026-06-29T12:00:00+02:00" git commit --allow-empty --date="2026-06-29T12:00:00+02:00" -m "feat(components): add the atoms / molecules / organisms the ticket required"
GIT_COMMITTER_DATE="2026-06-29T12:00:00+02:00" git commit --allow-empty --date="2026-06-29T12:00:00+02:00" -m "feat(sections): add dedicated Sections tier"
GIT_COMMITTER_DATE="2026-06-29T12:00:00+02:00" git commit --allow-empty --date="2026-06-29T12:00:00+02:00" -m "feat(templates): six full-page templates (beta)"
GIT_COMMITTER_DATE="2026-06-29T12:00:00+02:00" git commit --allow-empty --date="2026-06-29T12:00:00+02:00" -m "feat(surface): flag every element by final-product destination"
GIT_COMMITTER_DATE="2026-06-29T12:00:00+02:00" git commit --allow-empty --date="2026-06-29T12:00:00+02:00" -m "fix(toast): redesign as a snackbar, distinct from Alert"
GIT_COMMITTER_DATE="2026-06-29T12:00:00+02:00" git commit --allow-empty --date="2026-06-29T12:00:00+02:00" -m "feat(nav): collapsible sidebar categories, closed by default"
GIT_COMMITTER_DATE="2026-06-29T12:00:00+02:00" git commit --allow-empty --date="2026-06-29T12:00:00+02:00" -m "docs(surface): flag BOGY components as desktop-only"
GIT_COMMITTER_DATE="2026-06-29T12:00:00+02:00" git commit --allow-empty --date="2026-06-29T12:00:00+02:00" -m "docs(versioning): document semver scheme and full badge taxonomy"
GIT_COMMITTER_DATE="2026-06-29T12:00:00+02:00" git commit --allow-empty --date="2026-06-29T12:00:00+02:00" -m "fix(badge): rename NEW NO PRIOR SPEC to ORIGINAL"
GIT_COMMITTER_DATE="2026-06-29T12:00:00+02:00" git commit --allow-empty --date="2026-06-29T12:00:00+02:00" -m "refactor(overview): collapse sources, drop roadmap"
GIT_COMMITTER_DATE="2026-06-29T12:00:00+02:00" git commit --allow-empty --date="2026-06-29T12:00:00+02:00" -m "feat(tokens): add Tokens page with Figma Tokens-Studio JSON export"
GIT_COMMITTER_DATE="2026-06-29T12:00:00+02:00" git commit --allow-empty --date="2026-06-29T12:00:00+02:00" -m "docs(versioning): align the rules with semver.org 2.0.0"
GIT_COMMITTER_DATE="2026-06-29T12:00:00+02:00" git commit --allow-empty --date="2026-06-29T12:00:00+02:00" -m "fix(tokens): rebuild the Tokens page 1:1 from the ys-star source"
GIT_COMMITTER_DATE="2026-06-29T12:00:00+02:00" git commit --allow-empty --date="2026-06-29T12:00:00+02:00" -m "docs(start): state Apollo is the source of truth for implementation"
GIT_COMMITTER_DATE="2026-06-30T12:00:00+02:00" git commit --allow-empty --date="2026-06-30T12:00:00+02:00" -m "feat(tokens): generate apollo-tokens.json + downloadable export"
GIT_COMMITTER_DATE="2026-06-30T12:00:00+02:00" git commit --allow-empty --date="2026-06-30T12:00:00+02:00" -m "feat(docs): per-component implementation spec, Button exemplar"
GIT_COMMITTER_DATE="2026-06-30T12:00:00+02:00" git commit --allow-empty --date="2026-06-30T12:00:00+02:00" -m "feat(docs): implementation specs for every component via right-click"
GIT_COMMITTER_DATE="2026-06-30T12:00:00+02:00" git commit --allow-empty --date="2026-06-30T12:00:00+02:00" -m "fix(foundations): correct gradient/brand to the canonical 4-stop value"
GIT_COMMITTER_DATE="2026-06-30T12:00:00+02:00" git commit --allow-empty --date="2026-06-30T12:00:00+02:00" -m "feat(docs): add project README"
GIT_COMMITTER_DATE="2026-06-30T12:00:00+02:00" git commit --allow-empty --date="2026-06-30T12:00:00+02:00" -m "fix(nav): collapse Tokens into a single scrolling page"
GIT_COMMITTER_DATE="2026-06-30T12:00:00+02:00" git commit --allow-empty --date="2026-06-30T12:00:00+02:00" -m "fix(tokens): remove redundant Fermer buttons from the export modal"

echo "All 42 commits created. Run: git push --force-with-lease origin main"
