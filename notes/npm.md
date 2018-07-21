## Update npm
```bash
npm i -g npm
```

## List Installed Packages
```bash
# Global Top Level
npm ls -g --depth=0

# Local All Levels
npm ls
````

## Show Config
```bash
# Show Config
npm config ls

# Show config with defauls
npm config ls -l
```

## Search for a Package
```bash
npm search moment
```

## Initialize a Project
```bash
npm init
```

## Install a Dependency
```bash
# Install Dependencies Listed in package.json, use -P to not install dev dependencies
npm i

# Install Package Globally
npm i -g gulp

# Install a Package, Adds a Dependency to package.json as -P is default as of npm 5
npm i lodash

# Install a Package, Adds a Dev Dependency
npm i -D gulp

# Install an Exact Version
npm i -E sax # Will get the latest
npm i -E sax@0.1.1

# Install from Git Repo
npm i github:mygithubuser/myproject
```

## Update a Dependency
```bash
# Check for Outdated Dependencies
npm outdated

# Update Everything in package.json
npm up

# Update a Specific Package
npm up gulp
```

# Uninstall Dependencies
```bash
npm rm sax
```
