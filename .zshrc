autoload -Uz compinit
compinit

HISTSIZE=100000
SAVEHIST=100000

alias ls='eza -l'
alias dotfiles='git --git-dir=$HOME/.dotfiles/ --work-tree=$HOME'

eval "$(starship init zsh)"

source $(brew --prefix)/opt/antidote/share/antidote/antidote.zsh
antidote load ~/.zsh_plugins.txt

zstyle ':completion:*' matcher-list 'm:{a-z}={A-Z} m:{A-Z}={a-z}'
source <(fzf --zsh)
eval "$(direnv hook zsh)"
eval "$(zoxide init zsh)"
