### own bash config ###
export PS1='\[\e[0;93m\]<\[\e[0;95m\]\t \[\e[0;37m\]\d\[\e[0;93m\]>\[\e[0;96m\]\u\[\e[0;96m\]@\[\e[0;96m\]\h\[\e[0m\]:\[\e[0;92m\]\w\[\e[0;38;5;39m\]\$ \[\e[0m\]'
##export PS1='\[\033[32m\]\t \h:\w\$ '
umask 022
#
export PATH=$HOME/scripts:$PATH
#
#export LANG=de_DE.UTF-8
export EDITOR=nano
#
export HISTSIZE='5000'
export HISTFILESIZE='5000'
export HISTCONTROL=ignoredups:ereasedups:ignorespace
#
export GREP_OPTIONS='--color=auto'
alias grep='grep -ni --color=auto'
#
export LS_OPTIONS='--color=auto'
eval "`dircolors`"
alias ls='ls $LS_OPTIONS -F' # -F shows file attributes
alias ll='ls $LS_OPTIONS -l'
alias l='ls $LS_OPTIONS -lA'
#
alias inxi=' inxi -Fm'
alias btop='btop --utf-force'
alias bcat='batcat' # batcat is a alternate to the cat command
#
# always run make with -j and use cpu cores -1
alias make='make -j$(nproc --ignore=1)'
#
alias rm='rm -i'
alias cp='cp -i'
alias mv='mv -i'
alias cl='clear'
alias pip='pip-3.1'
#alias uptime='uptime && uptime >> /var/log/wartung_log/uptime.txt'
#alias temp='/opt/vc/bin/vcgencmd measure_temp' #for rpi
#
# use most as pager
export PAGER='most'
#
# Less Colors for Man Pages
export LESS_TERMCAP_mb=$'\E[01;31m'       # begin blinking
export LESS_TERMCAP_md=$'\E[01;38;5;74m'  # begin bold
export LESS_TERMCAP_me=$'\E[0m'           # end mode
export LESS_TERMCAP_se=$'\E[0m'           # end standout-mode
export LESS_TERMCAP_so=$'\E[38;5;246m'    # begin standout-mode - info box
export LESS_TERMCAP_ue=$'\E[0m'           # end underline
export LESS_TERMCAP_us=$'\E[04;38;5;146m' # begin underline
