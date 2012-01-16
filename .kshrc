PKG_PATH=ftp://ftp.fr.openbsd.org/pub/OpenBSD/snapshots/packages/i386/

[[ $TERM != "screen" ]] && tmux -2 #&& exit

alias m="mplayer"
alias l="ls -l"
alias ll="ls -a"
alias p="pwd"
alias c="clear"

alias ..="cd .."
alias ...="..; .."
alias ....="..; ..; ..;"

alias py="python3"
alias gcc="gcc -Wall -std=c99 "
alias gccc="gcc"                                # original gcc
alias a="./a.out"
alias mk="mkdir "
alias mv="mv -i"                                # question before overriding
alias cp="cp -i"                                # question before overriding
alias mk="mkdir"                                
alias findhere="find ./ -name"
alias printall="find ./ -type f -exec echo {} \;"
alias inhistory="cat ~/.bash_history ~/.zsh_history | grep "
alias empty="echo > "

# sanatize dir from .svn
alias nomoresvn="find .svn/ -exec rm -rf {} \; findhere .svn -exec rm -rf {} \;"

# no new lines
alias no_nls="tr '\n' ' '" 

alias sanatize="find . -name *DS_Store -exec rm {} \;"


# git
alias gitlog="git log --pretty=format:'%h - %an, %ar : %s' | head; echo ''" 
alias amend="git commit --amend"


# make a dir and cd into new dir
function mkcd {
        mkdir $1
        cd $1
}


alias base64="python -c 'import base64, sys; print base64.b64decode(sys.argv[1])'"

alias rksh=". ~/.kshrc"
alias gzip="gzip -9n"
alias pack="tar czvf "			                          # name.tar.gz ./folder/
alias unpack="tar -xf"
alias allrwx="find . -exec chmod u=rwx,g=rwx,o=rwx {} \;"       # give all files in this dir full rights
alias mirror="wget -m -k -K -E "                                # mirror a website into the current dir
alias fjson="python -mjson.tool"


# networking
alias myip="dig +short myip.opendns.com @resolver1.opendns.com"
alias ping="ping -c 5"
alias trace="traceroute"


set -o vi
export HISTSIZE=9999
#export HISTFILE=$HOME/.history
