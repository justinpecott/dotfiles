#!/usr/bin/env bash
set -euo pipefail

command -v brew >/dev/null || { echo "brew not found"; exit 1; }
BIN="$(realpath "$(brew --prefix caddy)/bin/caddy")"
ARCH=$([ "$(uname -m)" = arm64 ] && echo arm64 || echo amd64)
URL="https://caddyserver.com/api/download?os=darwin&arch=$ARCH&p=github.com%2Fcaddy-dns%2Fcloudflare"
TMP="$(dirname "$BIN")/.caddy.new"
trap 'rm -f "$TMP"' EXIT

curl -fL --progress-bar "$URL" -o "$TMP"
chmod +x "$TMP"
xattr -d com.apple.quarantine "$TMP" 2>/dev/null || true

# ad-hoc sign if the binary won't run unsigned
"$TMP" version >/dev/null 2>&1 || codesign -s - --force "$TMP"

# verify before swapping
"$TMP" list-modules | grep -q '^dns.providers.cloudflare$' \
  || { echo "Cloudflare module missing, aborting"; exit 1; }

brew services stop caddy >/dev/null 2>&1 || true
[ -e "$BIN.orig" ] || cp "$BIN" "$BIN.orig"   # keep original brew binary once
mv -f "$TMP" "$BIN"
brew pin caddy

echo "Installed: $("$BIN" version)"
brew services start caddy
