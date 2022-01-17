PROMPT="%F{cyan}[%n@%m %1~]%f "

alias l="ls -lah"
alias resetmaster='git fetch && git co master && git reset --hard origin/master && git branch --merged | egrep -v "(^\*|master|dev)" | xargs git branch -d'
alias resetmain='git fetch && git co main && git reset --hard origin/main && git branch --merged | egrep -v "(^\*|main|dev)" | xargs git branch -d'

zstyle ':completion:*:*:git:*' script ~/.git-completion.bash
fpath=(~/.zsh $fpath)

autoload -Uz compinit && compinit

eval "$(/opt/homebrew/bin/brew shellenv)"
