export LSCOLORS=ExFxCxDxBxEgEdAbAgAcAd
export DIFF_OPTIONS=-urbN
export PAGER=less
export EDITOR=vim
export VISUAL=vim
export LESS=-aCIMQR
# for mercurial
# http://tierseven.net/denizens/marc/blog/2008/03/12/mercurial-error-valueerror-unknown-locale-utf-8-on-macos-105/
export LC_ALL=en_US.UTF-8
export LANG=en_US.UTF-8

export HISTCONTROL=ignoredups
export HISTSIZE=100000
export HISTFILESIZE=100000

if [ `id -g` -eq 0 ]; then 
	PRM="#"
	PROMPT_COLOR='\[\033[0;31m\]'
else
	PRM=">"
	PROMPT_COLOR='\[\033[0;32m\]'
fi

case $TERM in
xterm*|rxvt*)
	TITLEBAR='\[\033]0;\u@\h:\w\007\]'
	;;
*)
	TITLEBAR=""
	;;
esac

export PS1="$TITLEBAR$PROMPT_COLOR\h\[\033[0m\]:\w$PRM "

alias ls="ls -FG"
alias l="ls -lA"
alias la="ls -A"
alias x="clear; exit"
alias e="vim"
alias c="clear"
alias r="sudo $SHELL -l"
alias p="less"
alias s="screen -RDOA"
alias .="command cd ../"
alias tu="top -o cpu"
alias tm="top -o vsize"
alias trc="traceroute -q 1 -w 1"
alias httpdump='sudo tcpdump -i en1 -n -s 0 -w - | env -i grep -a -o -E "Host\: .*|GET \/.*"'

trs() {
	wget --timeout=2 -U '"Mozilla/4.0 (compatible; MSIE 6.0; Windows NT 5.1)"' -qO- 'http://ajax.googleapis.com/ajax/services/language/translate?v=1.0&q='$1'&langpair=en|ru' | perl -ne '/translatedText":"([^"]*)"/; print $1'
	echo ''
	return 0;
}
