#!/usr/bin/env bash
# slim-sifter-x — Game developer · Scala and Spark
# 
set -euo pipefail

tmp=$(mktemp)
trap 'rm -f "$tmp"' EXIT

cat > "$tmp"

sort "$tmp" | uniq -c | sort -rn
echo "---"
echo "$(sort -u "$tmp" | wc -l | tr -d ' ') unique"
