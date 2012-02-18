# vim: set ft=sh:

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
