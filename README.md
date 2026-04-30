## Dotfiles (zsh-first, minimal, macOS-focused)

This repo holds the personal defaults I use across my machines.

### What’s included

- `~/.zshrc` – interactive shell behavior, aliases, history, prompt
- `~/.zprofile` – login-shell setup (Homebrew environment)
- `~/.gitconfig` + `~/.gitconfig-work` – git defaults and work identity override
- `~/.gitignore_global` – global git ignore patterns
- `~/.vimrc` + `.vim/colors/onedark.vim` – Vim config and colorscheme
- `sublime/Preferences.sublime-settings` – Sublime Text preferences
- `zed/settings.json` – Zed editor preferences
- `ghostty/config.ghostty` – Ghostty terminal preferences

---

## Prerequisites

### Homebrew

Install Homebrew first: <http://brew.sh>

Then install core tools:

```sh
brew install bat duckdb gh git jq node pure ripgrep ruff sqlite tree uv wget zsh
brew install --cask snowflake-snowsql
```

### zsh

Set Homebrew zsh as your default shell:

```sh
sudo sh -c "echo /opt/homebrew/bin/zsh >> /etc/shells" && chsh -s /opt/homebrew/bin/zsh
```

### Font

I use [MonoLisa Variable](https://www.monolisa.dev) with ligatures enabled where supported.

Example editor settings:

```json
{
  "editor.fontFamily": "MonoLisa Variable",
  "editor.fontSize": 12,
  "editor.fontLigatures": true
}
```

---

## Local secrets and machine-specific files

This repo keeps sensitive/local values out of version control.

### Optional local files for secrets

`~/.zshrc` includes optional local secret file hooks, currently commented out by default:

- `~/.anthropic_api_key`
- `~/.openai_api_key`
- `~/.kagi_api_key`

Uncomment any that you want to auto-load.

Create them locally if needed, for example:

```sh
export ANTHROPIC_API_KEY="..."
```

```sh
export OPENAI_API_KEY="..."
```

Do **not** commit credentials.

---

## Python workflow (uv)

- Docs: <https://docs.astral.sh/uv/>

Quick examples:

```sh
brew install uv
uv self version
uv init my-project
cd my-project
uv add ruff
uv run main.py
uv sync
```

---

## Notes

- `pure` prompt is expected in zsh (`prompt pure` in `.zshrc`).
- Homebrew shell environment is loaded in `.zprofile` when brew exists.
- Zed preferences are tracked in `zed/settings.json`.
- Ghostty preferences are tracked in `ghostty/config.ghostty`.
- Repository `.gitignore` contains local machine/editor junk and sensitive patterns.

Keep it simple, keep it portable.
