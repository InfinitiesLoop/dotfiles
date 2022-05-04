alias reload='source $HOME/.bashrc'
alias grep='grep --color=auto'
alias more='less'
alias df='df -h'
alias du='du -h'
alias patch='patch -u'
alias xclip='xclip -selection c'

alias diff='git diff'
alias diffc='git diff --cached'
alias pull='git pull -r'
alias push='git push'
alias st='git status'
alias amend='git commit --amend'

pidlist() {
  ps -eo pid,cmd | grep "$1" | grep -v grep | awk '{ print $1 }' | tr '\n' ',' | sed 's/.$//'
}

mkcd() {
  mkdir -p "$*"
  cd "$*"
}

hist() {
  history | grep -v hist | grep $*   
}

# adapted from https://github.com/geeksam/dotfiles/blob/main/bash/aliases

# Lazy ancestor directory ziggurat of doom
alias        ..='cd ..'
alias       ...='cd ../..'
alias      ....='cd ../../..'
alias     .....='cd ../../../..'
alias    ......='cd ../../../../..'
alias   .......='cd ../../../../../..'
alias  ........='cd ../../../../../../..'
alias .........='cd ../../../../../../../..'

# Command-line fu
alias  ll='ls -lhG'
alias  l1='ls -1hG'
alias lal='ls -alhG'
alias  ls='ls -hG'
alias  df='df -h'
alias  du='du -h'

# Shortcut for editing/reloading /etc/hosts
alias edit_hosts="mate /private/etc/hosts"
alias reload_hosts="dscacheutil -flushcache"

# git graph
alias  gg+='git log --oneline --abbrev-commit --graph --decorate --color'
alias gga+='git log --oneline --abbrev-commit --graph --decorate --color --all'
alias   gg='gg+  | head -n `expr $LINES / 2`'
alias  gga='gga+ | head -n `expr $LINES / 2`'

