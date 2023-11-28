# P10K instant prompt
if [[ -r "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh" ]]; then
  source "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh"
fi


# ZSH config
export PATH=$HOME/bin:/usr/local/bin:$PATH
export ZSH="$HOME/.oh-my-zsh"


ENABLE_CORRECTION="true"
COMPLETION_WAITING_DOTS="true"
HIST_STAMPS="yyyy-mm-dd"

# Oh My Zsh config
zstyle ':omz:update' mode auto

ZSH_THEME="powerlevel10k/powerlevel10k"
plugins=( git zsh-syntax-highlighting zsh-autosuggestions )
source $ZSH/oh-my-zsh.sh
[[ ! -f ~/.p10k.zsh ]] || source ~/.p10k.zsh


# PATH

# Add pnpm to path
export PNPM_HOME="C:\Users\FlorianLEROUX(A1)\AppData\Local\pnpm"
export PATH="$PNPM_HOME:$PATH"


# Aliases

# SHORTCUTS
alias c='clear'
alias h='history'
alias r='source ~/.zshrc'
alias d='cd ~/dev'
alias co="code . -r"

# LIST
alias ll='ls -la'
alias ld='ls -d */'

# CD Stuff
alias .='cd && ll'
alias ..='cd .. && ll'
alias ...='cd ../.. && ll'
alias ,='cd'
alias ,,='cd ..'
alias ,,,='cd'

# Node
alias dev="nr dev"