export PYTHONDONTWRITEBYTECODE=1
export EDITOR=nvim

# Aliases
alias vim='nvim'
alias penv='source .venv/bin/activate'
alias npenv='python3 -m venv .venv'
alias gcl='git clone'
alias gco='git checkout'
alias gf='git fetch'
alias gm='git merge'
alias gp='git pull'
alias gP='git push'
alias lg='lazygit'
alias src='source ~/.zshrc'
alias tma='tmux attach'
alias tmd='tmux detach'
alias tmk='tmux kill-server'

# History 
HISTFILE=$HOME/.zhistory
SAVEHIST=1000
HISTZISE=999
setopt share_history
setopt hist_expire_dups_first
setopt hist_ignore_dups
setopt hist_verify
bindkey "^[[A" history-search-backward
bindkey "^[[B" history-search-forward

# Initialize fzf
source <(fzf --zsh)

# Other plugins
eval "$(zoxide init zsh)"
eval "$(oh-my-posh init zsh --config $HOME/.config/ohmyposh/config.json)"
