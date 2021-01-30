export PS1="\[\e[36m\][\[\e[m\]\[\e[36m\]\u\[\e[m\]\[\e[36m\]@\[\e[m\]\[\e[36m\]\h\[\e[m\] \[\e[36m\]\W\[\e[m\]\[\e[36m\]]\[\e[m\] "

alias l="ls -lah"
if [[ -f /opt/dev/dev.sh ]]; then source /opt/dev/dev.sh; fi
if [ -e /Users/matt/.nix-profile/etc/profile.d/nix.sh ]; then . /Users/matt/.nix-profile/etc/profile.d/nix.sh; fi # added by Nix installer

  [[ -r "/usr/local/etc/profile.d/bash_completion.sh" ]] && . "/usr/local/etc/profile.d/bash_completion.sh"

alias resetmaster='git fetch && git co master && git reset --hard origin/master && git branch --merged | egrep -v "(^\*|master|dev)" | xargs git branch -d'

export GOPATH=$HOME
export PATH="/usr/local/share/chruby:$PATH"
export PATH=$GOPATH/bin:$PATH

SHELL_SESSION_HISTORY=0
HISTFILESIZE=1000000
HISTSIZE=1000000

# eval "$(shadowenv init bash)"

# idea() {
#   env __shadowenv_data= /usr/local/bin/idea "$@"
# }
alias idea="__shadowenv_data= idea"

# git bash completion
# source /nix/var/nix/gcroots/dev-profiles/user-extra-profile/etc/bash_completion.d/git-completion.bash
