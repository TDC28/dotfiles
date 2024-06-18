# Homebrew setup
if [[ $(uname -m) == 'arm64' ]]; then
    BREWPATH=/opt/homebrew/bin
else
    BREWPATH=/usr/local/bin
fi

export HOMEBREW_NO_AUTO_UPDATE=1
export EDITOR=nvim
export PATH=$BREWPATH:$PATH
export PATH="$HOME/.local/bin":$PATH
export PATH="/opt/homebrew/bin":$PATH
export XDG_CONFIG_HOME="$HOME/.config"
export FZF_DEFAULT_OPTS="$FZF_DEFAULT_OPTS \
  --highlight-line \
  --info=inline-right \
  --ansi \
  --layout=reverse \
  --border=none
  --color=bg+:#283457 \
  --color=bg:#1a1b26 \
  --color=border:#27a1b9 \
  --color=fg:#c0caf5 \
  --color=gutter:#16161e \
  --color=header:#ff9e64 \
  --color=hl+:#2ac3de \
  --color=hl:#2ac3de \
  --color=info:#545c7e \
  --color=marker:#ff007c \
  --color=pointer:#ff007c \
  --color=prompt:#2ac3de \
  --color=query:#c0caf5:regular \
  --color=scrollbar:#27a1b9 \
  --color=separator:#ff9e64 \
  --color=spinner:#ff007c \
"

# Aliases
alias vim='nvim'
alias penv='source .venv/bin/activate'
alias newpenv='python3 -m venv .venv'
alias gcl='git clone'
alias gco='git checkout'
alias lg='lazygit'
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
eval "$(oh-my-posh init zsh --config $HOME/.config/ohmyposh/config.toml)"
