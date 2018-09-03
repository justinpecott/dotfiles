## Fix Locales
As `root` or `sudo`...

```bash
export LANGUAGE=en_US.UTF-8
export LANG=en_US.UTF-8
export LC_ALL=en_US.UTF-8
locale-gen en_US.UTF-8
```

## Update System

```bash
sudo apt-get update
sudo apt-get dist-upgrade
sudo apt-get clean
```

## Grab a Package

```bash
sudo apt-get install vim
sudo apt-get install tmux
```