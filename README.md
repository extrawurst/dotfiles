# dotfiles

## required tools
* antidote (oh my zsh plugin manager)
* starship
* eza
* zoxide
* git-credential-manager
* fzf

## setup

```sh
git clone --bare https://github.com/extrawurst/dotfiles.git ~/.dotfiles

# Temporarily define the alias
alias dotfiles='git --git-dir=$HOME/.dotfiles/ --work-tree=$HOME'

dotfiles checkout
dotfiles config --local status.showUntrackedFiles no
```
