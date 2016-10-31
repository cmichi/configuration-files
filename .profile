export PATH=${PATH}:/usr/local/mmh/bin/
export MANPATH=$MANPATH:/usr/local/mmh/share/man/:/usr/share/man1/:
export UZBL_DOWNLOAD_DIR="/tmp/"
export CDPATH=${CDPATH}:/home/michi/projects/

export EDITOR="vi"

alias l="ls"
alias ll="ls -l"
alias la="ls -a"
alias lla="ls -al"
alias lh="ls -lh"

alias p="pwd"
alias c="clear"
alias z="zathura"

alias ..="cd .."
alias ...="..; ..;"
alias ....="..; ..; ..;"
alias ....="..; ..; ..; ..;"
alias ....="..; ..; ..; ..; ..;"

alias m="mplayer"

alias mv="mv -i"
alias cp="cp -i"

function mkcd {
	mkdir $1
	cd $1
}

alias base64="openssl enc -d -base64"

# gcc
export CFLAGS="-Wall -std=c99"
alias a="./a.out"

set -o vi
export HISTSIZE=9999
export HISTFILE=$HOME/.history

export SSH_AUTH_SOCK="$XDG_RUNTIME_DIR/ssh-agent.socket"
ssh-add -l >/dev/null || alias ssh='ssh-add -l >/dev/null || ssh-add && unalias ssh; ssh'
