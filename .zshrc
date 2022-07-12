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

eval "$(oh-my-posh init zsh --config ~/.config/oh-my-posh/theme.json)"
