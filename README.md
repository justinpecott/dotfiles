## A Fairly Sane and Minimal Set of Config

### Homebrew

Prefer the most current packages we can get so install [Homebrew](http://brew.sh)

```shell
brew install bat
brew install git
brew install jq
brew install ripgrep
brew install zsh
brew install pure
brew install sqlite3
brew install ruff
brew install uv
brew install fnm
```

### ZSH

- Install via Homebrew above
- Install pure prompt from Homebrew above

```shell
sudo sh -c "echo /opt/homebrew/bin/zsh >> /etc/shells" && chsh -s /opt/homebrew/bin/zsh
```

### Font

[MonoLisa Regular](https://www.monolisa.dev)

Don't forget to turn on ligatures in editors where needed.

```json
{
  "editor.fontFamily": "MonoLisa Regular",
  "editor.fontSize": 12,
  "editor.fontLigatures": true
}
```

### Get a consistent Python via pyenv

- [Documentation](https://docs.astral.sh/uv/)

```shell
brew install uv
uv --version
uv python list --only-installed
uv python install 3.13
uv init --script example.py --python 3.13
uv run example.py
```

### Get a consistent Node via fnm

- [Documentatiopn](https://github.com/Schniz/fnm)
- [Usage](https://github.com/Schniz/fnm/blob/master/docs/commands.md)

```shell
brew install fnm
fnm --version
fnm list-remote
fnm install lts/Jod
fnm list
```
