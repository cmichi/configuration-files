PKG_PATH=ftp://ftp.fr.openbsd.org/pub/OpenBSD/snapshots/packages/i386/

[[ $TERM != "screen" ]] && tmux -2 #&& exit

alias ll="ls -l"
alias la="ls -a"
alias lh="ls -lh"

alias p="pwd"
alias c="clear"

alias ..="cd .."
alias ...="..; .."
alias ....="..; ..; ..;"

alias py="python3"
alias m="mplayer"
alias ff="firefox &"

alias mk="mkdir "
alias mv="mv -i"			# question before overriding
alias cp="cp -i"			# question before overriding
alias mk="mkdir"                                
alias findhere="find ./ -name"
alias printall="find ./ -type f -exec echo {} \;"

function mkcd {				# make a dir and cd into new dir
        mkdir $1
        cd $1
}


# sanatize 
alias nomoresvn="find .svn/ -exec rm -rf {} \; findhere .svn -exec rm -rf {} \;"
alias sanatize="find . -name *DS_Store -exec rm {} \;"
alias no_nls="tr '\n' ' '"		# no more new lines


# git
alias gitlog="git log --pretty=format:'%h - %an, %ar : %s' | head; echo ''" 
alias amend="git commit --amend"


alias base64="openssl enc -d -base64"
alias rksh=". ~/.kshrc"
alias gzip="gzip -9n"
alias mirror="wget -m -k -K -E "	# mirror a website into the current dir
alias fjson="python -mjson.tool"


# networking
alias myip="dig +short myip.opendns.com @resolver1.opendns.com"
alias ping="ping -c 5"


# gcc
export CFLAGS="-Wall -std=c99"
alias a="./a.out"


set -o vi
export HISTSIZE=9999

