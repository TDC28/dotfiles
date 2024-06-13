# Homebrew setup
if [[ $(uname -m) == 'arm64' ]]; then
    BREWPATH=/opt/homebrew/bin
else
    BREWPATH=/usr/local/bin
fi
export HOMEBREW_NO_AUTO_UPDATE=1

export EDITOR=nvim

# PATH
export PATH=$BREWPATH:$PATH
export PATH="$HOME/.local/bin":$PATH
export PATH="/opt/homebrew/bin":$PATH

# Aliases
alias vim='nvim'
alias pyenv='source .venv/bin/activate'
alias gcl='git clone'
alias cat='bat'
alias ls='eza --color=always --long --no-filesize --icons=always --no-time --no-user --no-permissions'
alias tree='eza -T --color=always --icons=always'
alias cd='z'

# zsh uatosuggestions and syntax highlightingg
source ~/.custom_cmds.sh
source /opt/homebrew/share/zsh-autosuggestions/zsh-autosuggestions.zsh
source /opt/homebrew/share/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh

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
eval "$(fzf --zsh)"
eval "$(oh-my-posh init zsh --config $HOME/.config/ohmyposh/zen.toml)"
