PROMPT="%F{cyan}[%n@%m %1~]%f "

alias l="ls -lah"
alias resetmaster='git fetch && git co master && git reset --hard origin/master && git remote prune origin'
alias resetmain='git fetch && git co main && git reset --hard origin/main && git remote prune origin'
alias rebasemaster='git stash && git pull -r origin master && git stash apply'
alias rebasemain='git stash && git pull -r origin main && git stash apply'

eval "$(/opt/homebrew/bin/brew shellenv)"

if type brew &>/dev/null
then
  FPATH="$(brew --prefix)/share/zsh/site-functions:${FPATH}"

  autoload -Uz compinit
  compinit
fi

zstyle ':completion:*:*:git:*' script ~/.git-completion.bash

autoload -Uz compinit && compinit

setopt noautomenu
setopt nomenucomplete

export PYTHONBREAKPOINT=ipdb.set_trace

alias history="history 1"
HISTSIZE=99999
SAVEHIST=$HISTSIZE

# setopt SHARE_HISTORY HIST_IGNORE_DUPS
