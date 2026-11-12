#!/usr/bin/env bash
# Pull the latest upstream skills into .claude/skills/
set -euo pipefail
ROOT="$(cd "$(dirname "$0")/.." && pwd)"
TMP="$(mktemp -d)"
trap 'rm -rf "$TMP"' EXIT
S="$ROOT/.claude/skills"

clone() { git clone -q --depth 1 "https://github.com/$1" "$TMP/$1"; }

clone blader/humanizer
clone nateherkai/scroll-craft
clone addyosmani/agent-skills
clone googleworkspace/cli

rm -rf "$S/humanizer" && cp -r "$TMP/blader/humanizer" "$S/humanizer" && rm -rf "$S/humanizer/.git"
rm -rf "$S/scroll-craft" && cp -r "$TMP/nateherkai/scroll-craft/plugins/nateherk-design/skills/scroll-craft" "$S/"
for d in "$TMP"/addyosmani/agent-skills/skills/*/ "$TMP"/googleworkspace/cli/skills/*/; do
  n="$(basename "$d")"; rm -rf "$S/$n"; cp -r "$d" "$S/"
done
echo "Synced $(ls "$S" | wc -l) skills."
