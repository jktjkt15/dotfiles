export TERM=xterm-256color
alias vim='nvim'
alias vi='nvim'
alias ta='tmux attach'
alias config='/usr/bin/git --git-dir=/home/$USER/.cfg/ --work-tree=/home/$USER'

alias ls="exa"
alias ll="exa -alh"
alias la="exa -alh"
alias tree="exa --tree"

alias cat="bat"

source ~/.config/zsh-autosuggestions/zsh-autosuggestions.zsh
source /usr/share/zsh/plugins/zsh-vi-mode/zsh-vi-mode.plugin.zsh

autoload -Uz add-zsh-hook vcs_info
zstyle ':vcs_info:*' enable git svn
zstyle ':vcs_info:*' check-for-changes true
zstyle ':vcs_info:*' unstagedstr ' *'
zstyle ':vcs_info:*' stagedstr ' +'
zstyle ':vcs_info:git*' formats " (%b%u%c) "
zstyle ':vcs_info:git*' actionformats " (%b|%a%u%c) "
setopt prompt_subst
add-zsh-hook precmd vcs_info

autoload -U colors && colors
PROMPT='~%F{141}%d$ %F{reset}${vcs_info_msg_0_}'
