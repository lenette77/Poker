#!/usr/bin/env bash
# Requires GitHub CLI `gh` authenticated: gh auth login
set -euo pipefail
REPO="$1" # e.g. user/poker-backend
labels=(
  "priority:high:#d73a4a"
  "priority:medium:#fbca04"
  "priority:low:#0e8a16"
  "type:feature:#1d76db"
  "type:bug:#d73a4a"
  "type:infra:#0052cc"
)
for l in "${labels[@]}"; do
  name="$(echo $l | cut -d: -f1)"
  color="$(echo $l | cut -d: -f3)"
  gh label create "$name" --color "$color" -R "$REPO" || true
done
