PROMPT="%F{cyan}[%n@%m %1~]%f "

alias l="ls -lah"
alias resetmaster='git fetch && git co master && git reset --hard origin/master && git branch --merged | egrep -v "(^\*|master|dev)" | xargs git branch -d'
alias resetmain='git fetch && git co main && git reset --hard origin/main && git branch --merged | egrep -v "(^\*|main|dev)" | xargs git branch -d'

eval "$(/opt/homebrew/bin/brew shellenv)"

if type brew &>/dev/null
then
  FPATH="$(brew --prefix)/share/zsh/site-functions:${FPATH}"

  autoload -Uz compinit
  compinit
fi

zstyle ':completion:*:*:git:*' script ~/.git-completion.bash
fpath=(~/.zsh $fpath)

autoload -Uz compinit && compinit

setopt noautomenu
setopt nomenucomplete


export PYTHONBREAKPOINT=ipdb.set_trace

export CPATH=/opt/homebrew/include
export LIBRARY_PATH=/opt/homebrew/lib

