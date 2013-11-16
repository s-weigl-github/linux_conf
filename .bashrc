### own bash config ###
export PS1='\[\033[32m\]\t \h:\w\$ '
umask 022
#
export PATH=$HOME/scripts:$PATH
#
export HISTSIZE='2000'
export HISTFILESIZE='2000'
export HISTCONTROL=ignoredups
export HISTCONTROL=ereasedups
#
export GREP_OPTIONS='--color=auto'
export LS_OPTIONS='--color=auto'
eval "`dircolors`"
alias ls='ls $LS_OPTIONS'
alias ll='ls $LS_OPTIONS -l'
alias l='ls $LS_OPTIONS -lA'
#
alias rm='rm -i'
alias cp='cp -i'
alias mv='mv -i'
alias cl='clear'
alias pip='pip-3.1'
alias uptime='uptime && uptime >> /var/log/wartung_log/uptime.txt'
