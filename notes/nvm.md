nvm
## Install or Update nvm
```bash
# Using curl
curl -o- https://raw.githubusercontent.com/creationix/nvm/v0.33.9/install.sh | bash

# Using wget
wget -qO- https://raw.githubusercontent.com/creationix/nvm/v0.33.9/install.sh | bash
```

Required in .zshrc
```bash
export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"  # This loads nvm bash_completion
```

## List Versions
```bash
# List Installed Versions
nvm ls

# List Remote Versions
nvm ls-remote
```

## Install Versions
```bash
# Install Latest
nvm install node

# Install Latest LTS
nvm install --lts

# Install Specific Version
nvm install v8.10.0

# Migrate Packages While Installing
nvm install node --reinstall-packages-from=node

```

## Using Versions
```bash
# Pick a Version
nvm use v8.10.0

# Default to the newest
nvm use default

# Fire a One Off
nvm exec 4.2 node --version
```

## Removing Versions
```bash
# Clear by Version Name
nvm uninstall lts/argon
```
