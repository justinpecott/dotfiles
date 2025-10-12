## A Fairly Sane and Minimal Set of Config

### Homebrew

Prefer the most current packages we can get so install [Homebrew](http://brew.sh)

```shell
$ brew install bat
$ brew install git
$ brew install jq
$ brew install ripgrep
$ brew install zsh
$ brew install pure
$ brew install sqlite3
$ brew install ruff
$ brew install uv
$ brew install fnm
```

### ZSH

-   Install via Homebrew above
-   Install pure prompt from Homebrew above

```shell
$ sudo sh -c "echo /opt/homebrew/bin/zsh >> /etc/shells" && chsh -s /opt/homebrew/bin/zsh
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

### Get a consistent Python via UV

-   [Documentation](https://docs.astral.sh/uv/)

```shell
# Install
$ brew install uv
$ uv self version

# Initialize a script
# Creates a single file with inline dependencies in # /// script
uv init --script my-script.py

# Initialize a project
# Use --bare for a minimal setup (script and pyproject.toml)
$ uv init explore-uv
$ cd explore-uv
$ tree -a
.
├── .git
├── .gitignore
├── .python-version
├── README.md
├── main.py
└── pyproject.toml

# Add dependencies
# A new virtual environment will be created if one doesn't exist at .venv
# Use
$ uv add scikit-learn xgboost
$ uv add --dev flask
$ uv add pandas --optional plot excel

# Remove dependency
$ uv remove scikit-learn

# Execute Script
# Ensures the virtual environment is used
# Can also execute normally after activating .venv
$ uv run main.py

# Install Dependencies
# Creates and/or updates .venv based on pyproject.toml and uv.lock
$ uv sync
$ uv sync --no-dev

# Manage Versions
# Most commands allow a specific version with --python 3.13.8
$ uv python list --only-installed
$ uv python install 3.14

# Set version for a directory. Creates .python-version
$ uv pin 3.14.0
$ uv pin --global 3.14.0

# Using tools
# Command line tools like ruff, black, pytest, mypy
# uvx is alias for uv tool run
$ uv tool run ruff check main.py
$ uvx ruff format main.py

# uv.lock vs requirements.txt
# Lock is specific vs requirements for ranges/legacy
# Create a requirements.txt from a uv.lock
$ uv export -o requirements.txt
```

### Get a consistent Node via fnm

-   [Documentatiopn](https://github.com/Schniz/fnm)
-   [Usage](https://github.com/Schniz/fnm/blob/master/docs/commands.md)

```shell
brew install fnm
fnm --version
fnm list-remote
fnm install lts/Jod
fnm list
fnm default v22.20.0
fnm current
fnm uninstall v22.17.0
```
