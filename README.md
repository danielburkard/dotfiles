# Dotfiles

## Preparations
```shell
mkdir ~/.config
```

## Install [brew](https://brew.sh)
```shell
/bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"
```

## Clone Repo
```shell
git clone git@github.com:danielburkard/dotfiles.git ~/Developer/dotfiles
```

## Install dependencies from Brewfile
```shell
brew bundle --file=~/Developer/dotfiles/Brewfile
```

## Setup iTerm2
```shell
brew install --cask iterm2 font-fira-code-nerd-font
```

## Setup zsh
Zsh is the standard shell on macOS

```shell
brew install zsh-syntax-highlighting zsh-autosuggestions zsh-autocomplete fzf
ln -s ~/Developer/dotfiles/zshrc ~/.zshrc
ln -s ~/Developer/dotfiles/zshenv ~/.zshenv
ln -s ~/Developer/dotfiles/zprofile ~/.zprofile
```

## Setup powerlevel10k
```shell
brew install powerlevel10k
ln -s ~/Developer/dotfiles/config/p10k.zsh ~/.config/p10k.zsh
```

## Setup tmux
```shell
brew install tmux
ln -s ~/Developer/dotfiles/config/tmux ~/.config/tmux
```

## Setup neovim
```shell
brew install neovim
```
