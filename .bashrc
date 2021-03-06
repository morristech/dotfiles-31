#
# ~/.bashrc
#

# If not running interactively, don't do anything
[[ $- != *i* ]] && return

alias ls='ls --color=auto'

# Escaped ANSI colors...
BLD="\[\e[21m\]"
BLK="\[\e[30m\]"
RED="\[\e[31m\]"
GRN="\[\e[32m\]"
YEL="\[\e[33m\]"
BLU="\[\e[34m\]"
MAG="\[\e[35m\]"
CYN="\[\e[36m\]"
WHT="\[\e[37m\]"
LBLK="\[\e[90m\]"
LRED="\[\e[91m\]"
LGRN="\[\e[92m\]"
LYEL="\[\e[93m\]"
LBLU="\[\e[94m\]"
LMAG="\[\e[95m\]"
LCYN="\[\e[96m\]"
LWHT="\[\e[97m\]"
RESET="\[\e[0m\]"

# Obtain current git branch
function parse_git_branch() {
	BRANCH=`git branch 2> /dev/null | sed -e '/^[^*]/d' -e 's/* \(.*\)/\1/'`
	if [ ! "${BRANCH}" == "" ]
	then
		echo "[${BRANCH}] "
	else
		echo ""
	fi
}

# Custom prompt
export PS1="${LMAG}\u${WHT}@${LCYN}\h${RESET} \W ${YEL}\`parse_git_branch\`${RESET}\$ "

if [ -e ~/.bashrc.aliases ] ; then
   source ~/.bashrc.aliases
fi
# >>> Added by cnchi installer
EDITOR=/usr/bin/nano

# Ruby Gems
export GEM_HOME="/home/james/gems"
export PATH="$PATH:$GEM_HOME/bin"
export PATH="$PATH:/root/.gem/ruby/2.5.0/bin"
export PATH="$PATH:~/.gem/ruby/2.5.0/bin"
export PATH="$PATH:/home/james/flutter/bin"
export PATH="$PATH:/home/james/bin"

export GOPATH="/home/james/go"
export PATH="$PATH:$GOPATH/bin"
