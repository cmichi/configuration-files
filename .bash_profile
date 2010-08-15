export PATH=/Applications/MAMP/bin/php5/bin:/Developer/usr/bin:/opt/local/bin:/usr/bin/:$PATH
export JAVA_HOME=/System/Library/Frameworks/JavaVM.framework/Versions/1.6.0/Home


# copy working directory to clipboard and 
# go working directory (from clipboard)
# very nice if you open several terminal windows and want
# to cd into the dir of another terminal window
alias cwd='pwd | pbcopy'
alias gowd='cd "`pbpaste`"'


# makes a dir and cd's into the new dir
function mk {
	mkdir $1
	cd $1
}


alias ..="cd .."
alias ...="cd .. ; cd .."
alias finder="open ."
alias cls="clear"
alias py="python3"
alias gcc="gcc -Wall -std=c99 "
alias a="./a.out"
alias ls="ls -G -C" 						# -G for output in rows, -C for colors 
alias mv="mv -i"						# question before overriding
alias tracer="traceroute"
alias allrwx="find . -exec chmod u=rwx,g=rwx,o=rwx {} \;" 	# give all files in this dir full rights
alias mirror="wget -m -k -K -E " 				# mirror a website into the current dir
alias sha1="/usr/bin/openssl sha1" 				# print sha-1 hash of the file specified
alias log="history | tail -25"					# displays the last 25 commands in the history

alias gitlog="git log --pretty=format:'%h - %an, %ar : %s'" 
alias amend="git commit --amend"

alias ips="ifconfig -a | perl -nle'/(\d+\.\d+\.\d+\.\d+)/ && print $1'" # Get readable list of network IPs
alias myip="dig +short myip.opendns.com @resolver1.opendns.com"

alias gzip="gzip -9n" 						# set strongest compression level as ‘default’ for gzip
alias ping="ping -c 5" 						# ping 5 times ‘by default’
alias ql="qlmanage -p 2>/dev/null" 				# preview a file using QuickLook


# color the terminal
export TERM="xterm-color"
PS1="\[\033[01;32m\]\u\[\033[01;34m\] \w \$\[\033[00m\] "


# set the bash into vi mode, so you can use vi keymaps in the prompt
set -o vi


# some ssh configs i don't want you to see :)
source ~/.bash_profile_private
