autoload -Uz compinit
compinit

HISTSIZE=100000
SAVEHIST=100000

alias ls='eza -l'
alias dotfiles='git --git-dir=$HOME/.dotfiles/ --work-tree=$HOME'

eval "$(starship init zsh)"

source $(brew --prefix)/opt/antidote/share/antidote/antidote.zsh
antidote load ~/.zsh_plugins.txt

# brew install libpq
export PATH="/opt/homebrew/opt/libpq/bin:$PATH"
export LDFLAGS="-L/opt/homebrew/opt/libpq/lib"
export CPPFLAGS="-I/opt/homebrew/opt/libpq/include"
export PKG_CONFIG_PATH="/opt/homebrew/opt/libpq/lib/pkgconfig"
  
zstyle ':completion:*' matcher-list 'm:{a-z}={A-Z} m:{A-Z}={a-z}'
source <(fzf --zsh)
eval "$(direnv hook zsh)"
eval "$(zoxide init zsh)"

