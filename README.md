## A Fairly Sane and Minimal Set of Config

### Homebrew

Prefer the most current packages we can get so install [Homebrew](http://brew.sh)

```shell
brew install awscli
brew install bat
brew install dos2unix
brew install git
brew install jq
brew install ripgrep
brew install zsh
brew install pure
brew install sqlite3
brew install pyenv
brew install wcurl
brew install wget
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

- [Installation Instructions](https://github.com/pyenv/pyenv#installation)

```
brew upgrade pyenv
pyenv
pyenv install -l
pyenv install 3.10.2
pyenv version
pyenv versions
pyenv global 3.10.2
```

### Get a consistent Node via nvm

- [Installation Instructions](https://github.com/nvm-sh/nvm?tab=readme-ov-file#installing-and-updating)

```
curl -o- https://raw.githubusercontent.com/nvm-sh/nvm/v0.40.1/install.sh | bash
nvm ls-remote
nvm install --lts
nvm ls
nvm use system
nvm use lts/*
nvm alias default lts/*
```
