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
alias gsty="$HOME/dev/gsty/run.sh"

# Git aliases
alias gpof="git push -f origin"
alias gpo="git push origin"
alias gri="git rebase -i"
alias glog="git log --oneline --graph"
alias gcom="git commit"
alias gchk='git branch | grep -v "^\*" | fzf --height=20% --reverse --info=inline | xargs git checkout'
alias rkey='eval $(ssh-agent) && ssh-add -D && ssh-add ~/.ssh/id_rsa'
alias tshls='/Users/madrix/dev/scripts/tshls.sh'

export PATH=$PATH:/Users/madrix/go/bin
export GOPRIVATE=github.com/fampay-inc/*
export GOPATH=$HOME/go
export PATH=$PATH:/Users/madrix/go/bin
export PATH="$HOME/.local/bin:$PATH"
export PATH="/Applications/Alacritty.app/Contents/MacOS:$PATH"
export OBSIDIAN_PATH="/Users/madrix/Documents/Fampay"
export HOMEBREW_NO_AUTO_UPDATE=1

bindkey -s "^[[17~" "selected=\$(tsh ls | tail -n +3 | fzf | awk '{print \$1}') && [ -n \"\$selected\" ] && tsh ssh -A ubuntu@\$selected\n"
bindkey -s "^w" "zi\n"

# To customize prompt, run `p10k configure` or edit ~/.p10k.zsh.

[ -f ~/.fzf.zsh ] && source ~/.fzf.zsh

plugins=(git)

source $ZSH/oh-my-zsh.sh
source /opt/homebrew/share/zsh-autosuggestions/zsh-autosuggestions.zsh
eval "$(zoxide init zsh)"
eval "$(starship init zsh)"
rkey
