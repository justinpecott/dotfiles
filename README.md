## A Fairly Sane and Minimal Set of Config

### Homebrew

Prefer the most current packages we can get so install [Homebrew](http://brew.sh)

```Shell
brew install awscli
brew install bat
brew install dos2unix
brew install fish
brew install git
brew install jq
brew install node
brew install python
brew install ripgrep
brew install ruby
## pyenv
brew install pyenv
brew install openssl readline sqlite3 xz zlib
```

### Shell

- [Fish](https://fishshell.com)
- Plugins Installed via [Fisher](https://github.com/jorgebucaran/fisher)
- [Pure Prompt](https://github.com/pure-fish/pure)

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

### Editor Theme

- [Monokai Pro](https://monokai.pro)

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
