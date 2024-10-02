export ALACRITTY_CONFIG_FILE="$HOME/.config/alacritty/alacritty_light.toml"
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
alias ls='eza --color=always --long --no-filesize --icons=always --no-time --no-user --no-permissions'
alias tree='eza -T --color=always --icons=always --no-git'
alias cd='z'
alias tma='tmux attach'
alias tmd='tmux detach'
alias tmk='tmux kill-server'
alias tmes='tmuxifier edit-session'
alias tmls='tmuxifier load-session'
alias tmns='tmuxifier new-session'
alias neofetch='fastfetch'
alias wp='which pip'

# zsh zsh-autosuggestions and syntax highlighting
source ~/.custom_cmds.sh
source /opt/homebrew/share/zsh-autosuggestions/zsh-autosuggestions.zsh

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

eval "$(zoxide init zsh)"
eval "$(tmuxifier init -)"
eval "$(oh-my-posh init zsh --config $HOME/.config/ohmyposh/config.toml)"
