export LSCOLORS=ExFxCxDxBxEgEdAbAgAcAd
export DIFF_OPTIONS=-urbN
export PAGER=less
export EDITOR=vim
export VISUAL=vim
export LESS=-aCIMQR
# for mercurial
# http://tierseven.net/denizens/marc/blog/2008/03/12/mercurial-error-valueerror-unknown-locale-utf-8-on-macos-105/
export LANG=en_US.UTF-8
export LC_ALL=en_US.UTF-8
export LC_CTYPE=en_US.UTF-8
export PATH=$HOME/bin:$PATH

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

[[ -s "$HOME/.bash_aliases" ]] && source "$HOME/.bash_aliases"

[[ -s "$HOME/.rvm/scripts/rvm" ]] && source "$HOME/.rvm/scripts/rvm"
