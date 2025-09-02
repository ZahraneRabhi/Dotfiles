# ~/.zshrc - minimal with Powerlevel10k

if [[ -r "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh" ]]; then
  source "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh"
fi

export ZSH="$HOME/.oh-my-zsh"

# Use Powerlevel10k theme
ZSH_THEME="powerlevel10k/powerlevel10k"

# Plugins
plugins=(git)

# Load Oh My Zsh
source $ZSH/oh-my-zsh.sh

# Source Powerlevel10k config if it exists
[[ ! -f ~/.p10k.zsh ]] || source ~/.p10k.zsh

# User configuration
#export LANG=en_US.UTF-8
#export EDITOR="nvim"

# Aliases
alias ll="ls -lah"
alias gs="git status"
export PATH="$HOME/.local/bin:$PATH"
