#!/usr/bin/env bash
set -euo pipefail

# Lightweight publication guard. Review findings manually; this is deliberately
# conservative and scans tracked text files only.
files=$(git ls-files | grep -Ev '(^|/)(package-lock\.json|yarn\.lock|pnpm-lock\.yaml)$' || true)
if [ -z "$files" ]; then
  echo "No tracked files to scan."
  exit 0
fi

if grep -nE '(^|[^A-Za-z])(AKIA[0-9A-Z]{16}|-----BEGIN (RSA|EC|OPENSSH|PRIVATE) KEY-----|gh[pousr]_[A-Za-z0-9]{20,}|sk-[A-Za-z0-9]{20,})([^A-Za-z]|$)' $files; then
  echo "Potential credential pattern found; review before publication." >&2
  exit 1
fi

echo "No common credential patterns found in tracked text files."
