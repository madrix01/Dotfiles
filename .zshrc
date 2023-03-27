# Enable Powerlevel10k instant prompt. Should stay close to the top of ~/.zshrc.
# Initialization code that may require console input (password prompts, [y/n]
# confirmations, etc.) must go above this block; everything else may go below.
export ZSH="$HOME/.oh-my-zsh"

alias ls="lsd"
alias l="ls -la"
alias tmux="TERM=screen-256color-bce tmux"
alias fzd="cd ~ && cd \$(find * -type d | fzf)"
alias cat="bat -p"
alias nv="nvim"
alias ..="cd .."
alias ...="cd ../.."
alias ol="zi"

export PATH=$PATH:/Users/madrix/go/bin
export GOPRIVATE=bitbucket.org/fmpy/*
export GOPATH=$HOME/go
export PATH=$PATH:/Users/madrix/go/bin
export PATH="$HOME/.local/bin:$PATH"
# To customize prompt, run `p10k configure` or edit ~/.p10k.zsh.

[ -f ~/.fzf.zsh ] && source ~/.fzf.zsh

plugins=(git)

source $ZSH/oh-my-zsh.sh
source /opt/homebrew/share/zsh-autosuggestions/zsh-autosuggestions.zsh
eval "$(zoxide init zsh)"
eval "$(starship init zsh)"
