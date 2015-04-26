##  A Fairly Sane and Minimal Set of Config 
Zsh, Sublime, Vim, and Ruby, and Git are the daily drivers.

### Homebrew
Prefer the most current packages we can get so install [Homebrew](http://brew.sh)

``` Shell
brew install git
brew install wget
brew install vim
brew install zsh
# Add /usr/local/bin/zsh to /etc/shells
chsh -s /usr/local/bin/zsh
```

### Fonts
Adobe's [Source Code Pro](https://github.com/adobe-fonts/source-code-pro) is very nice.

### Sublime Text
Use [Sublime Text 3](http://www.sublimetext.com/3) with the excellent minimal theme [Spacegray](http://kkga.github.io/spacegray/) installed via [Package Control](https://packagecontrol.io)

### Zsh
Awesome minimal prompt with git introspection courtesy of [Pure](https://github.com/sindresorhus/pure)

### Ruby
I've found [rbenv](https://github.com/sstephenson/rbenv) to be the most straightforward solution to handling versions. I prefer installing this manually to using Homebrew for whatever reason.

``` Shell
git clone https://github.com/sstephenson/rbenv.git ~/.rbenv
git clone https://github.com/sstephenson/ruby-build.git ~/.rbenv/plugins/ruby-build
git clone https://github.com/sstephenson/rbenv-gem-rehash.git ~/.rbenv/plugins/rbenv-gem-rehash
rbenv install 2.2.0
rbenv global 2.2.0
```
