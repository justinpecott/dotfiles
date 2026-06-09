# uv
export PATH="/Users/justin/.local/bin:$PATH"

# Reset fpath to clean defaults, removing any stale paths inherited from
# old zsh versions (e.g. /opt/homebrew/Cellar/zsh/5.9/...) baked into FPATH.
# /opt/homebrew/share/zsh/functions contains per-file symlinks to the current
# Homebrew zsh version, so this survives future upgrades.
fpath=(
  /opt/homebrew/share/zsh/functions
  /opt/homebrew/share/zsh/site-functions
  /usr/local/share/zsh/site-functions
)
